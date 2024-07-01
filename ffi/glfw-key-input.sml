structure Key = struct
  type window = MLton.Pointer.t

  (* Export function to C. *)
  val export = _export "printFromMLton" public : (unit -> unit) -> unit;
  val _ = export (fn () => print "hello from mlton")

  (* Import function to set callback for GLFW. *)
  val setCallback = _import "setKeyCallback" public reentrant : window -> unit;
end
