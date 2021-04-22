// for f in */driver ; do spatch --sp-file const.cocci --very-quiet $f/*.[ch] ; done | tee p

@r_sensor_decl@
identifier fn, arg;
type R;
type stmdev_ctx_t =~ "stmdev_ctx_t";
@@
 R
 fn(
+const
 stmdev_ctx_t arg, ...);

@r_sensor_defn@
identifier fn, arg;
type stmdev_ctx_t =~ "stmdev_ctx_t";
@@
 fn(
+const
 stmdev_ctx_t arg, ...) { ... }
