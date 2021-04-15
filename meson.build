# SPDX-License-Identifier: CC-BY-SA-4.0
# Copyright 2021 Peter A. Bigot

project('stmemsc', 'c',
        version: '1.04',
        license: 'BSD-2-Clause && CC-BY-SA-4.0')

subdir('include')
subdir('src')
stmemsc_dep = declare_dependency(link_with: stmemsc_lib,
                                 include_directories: stmemsc_inc)
