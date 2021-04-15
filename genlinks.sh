#!/bin/sh
# SPDX-License-Identifier: CC-BY-SA-4.0
# Copyright 2021 Peter A. Bigot
#
# Add links to simplify access to the sensor headers through a
# namespaced path.  Modify the implementation file to support using
# that path.

rm -rf include src
mkdir -p include/stmemsc src
for f in *_STdC ; do
    sn=$(echo $f | sed -e 's@_STdC@@')
    dsbase=${f}/driver/${sn}_reg
    (cd include/stmemsc ; ln -s ../../${dsbase}.h .)
    (cd src ; ln -s ../${dsbase}.c .)
    (cd ${f}/driver ; sed -i -r -e 's@#include "('${sn}'_reg.h)"@#include <stmemsc/\1>@g' *.h *.c)
done
