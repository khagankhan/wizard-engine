;; INNER_CALIBRATION = 750
(module
  (memory 1)
  (data
    "\02\A7\01\08\04\07\EF\08\02\FE\01\08\FD\07\01\08"
    "\02\B7\01\08\04\07\DF\08\02\FE\01\08\FD\07\01\08"
    "\02\C7\01\08\04\07\CF\08\02\FE\01\08\FD\07\01\08"
    "\02\D7\01\08\04\07\BF\08\02\FE\01\08\FD\07\01\08"
    "\02\E7\01\08\04\C7\FF\08\02\FE\01\08\FD\07\01\08"
    "\02\F7\01\08\C4\07\FF\08\02\FE\01\08\FD\07\01\08"
    "\02\17\01\C8\04\07\FF\08\02\FE\01\08\FD\07\01\08"
    "\02\17\01\08\0D\07\FF\08\02\FE\01\08\FD\07\01\08"
    "\02\22\01\08\04\07\FD\0D\0D\FE\01\08\FD\07\01\08"
    "\02\23\01\08\04\07\FF\08\02\FF\01\0F\FD\07\01\08"
    "\02\02\01\08\04\07\FF\08\02\FE\01\0F\FD\07\01\08"
    "\02\04\01\08\04\07\FF\08\02\FE\01\08\FE\07\01\08"
    "\02\44\01\08\04\07\FF\08\02\FE\01\08\FD\FF\01\08"
    "\02\55\01\08\04\07\FF\08\02\FE\01\08\FD\07\01\08"
    "\02\66\01\08\04\07\FF\08\02\FE\01\08\FD\07\01\08"
    "\02\88\01\08\04\07\FF\08\02\FE\01\08\FD\07\01\08"
  )
  (func $start (export "_start")
    (call $main)
  )
  (func $main (export "main")
    (local $y i32)
    (local.set $y (i32.const 75000))
    (loop $l
      (memory.init 0 (i32.const 0) (i32.const 0) (i32.const 256))
      (memory.init 0 (i32.const 256) (i32.const 0) (i32.const 256))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
)
