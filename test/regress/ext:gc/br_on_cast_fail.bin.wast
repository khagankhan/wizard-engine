(module binary
  "\00\61\73\6d\01\00\00\00\01\a1\80\80\80\00\07\60"
  "\00\01\7f\5f\01\77\00\5e\78\00\60\01\6f\00\60\01"
  "\7f\01\7f\60\01\6b\01\64\02\60\01\6b\01\64\01\03"
  "\88\80\80\80\00\07\00\03\04\04\04\04\04\04\84\80"
  "\80\80\00\01\6e\00\0a\07\da\80\80\80\00\06\04\69"
  "\6e\69\74\00\01\0e\62\72\5f\6f\6e\5f\6e\6f\6e\5f"
  "\6e\75\6c\6c\00\02\0d\62\72\5f\6f\6e\5f\6e\6f\6e"
  "\5f\69\33\31\00\03\10\62\72\5f\6f\6e\5f\6e\6f\6e"
  "\5f\73\74\72\75\63\74\00\04\0f\62\72\5f\6f\6e\5f"
  "\6e\6f\6e\5f\61\72\72\61\79\00\05\09\6e\75\6c\6c"
  "\2d\64\69\66\66\00\06\09\85\80\80\80\00\01\03\00"
  "\01\00\0a\db\81\80\80\00\07\84\80\80\80\00\00\41"
  "\09\0b\ac\80\80\80\00\00\41\00\d0\6e\26\00\41\01"
  "\41\07\fb\1c\26\00\41\02\41\06\fb\00\01\26\00\41"
  "\03\41\05\41\03\fb\06\02\26\00\41\04\20\00\fb\1a"
  "\26\00\0b\92\80\80\80\00\00\02\64\6e\20\00\25\00"
  "\d6\00\41\00\0f\0b\41\7f\0f\0b\95\80\80\80\00\00"
  "\02\6e\20\00\25\00\fb\19\01\00\6e\6c\fb\1e\0f\0b"
  "\41\7f\0f\0b\b2\80\80\80\00\00\02\6e\20\00\25\00"
  "\fb\19\01\00\6e\6b\02\06\02\05\fb\18\01\01\6b\01"
  "\fb\18\01\00\6e\02\41\7e\0f\0b\41\00\fb\0d\02\0f"
  "\0b\fb\03\01\00\0f\0b\41\7f\0f\0b\95\80\80\80\00"
  "\00\02\6e\20\00\25\00\fb\19\01\00\6e\6a\fb\0f\0f"
  "\0b\41\7f\0f\0b\99\80\80\80\00\00\02\64\6e\02\6b"
  "\20\00\25\00\fb\19\03\01\6e\6b\0b\41\01\0f\0b\41"
  "\00\0f\0b"
)
(invoke "init" (ref.extern 0))
(assert_return (invoke "br_on_non_null" (i32.const 0x0)) (i32.const 0x0))
(assert_return
  (invoke "br_on_non_null" (i32.const 0x1))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "br_on_non_null" (i32.const 0x2))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "br_on_non_null" (i32.const 0x3))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "br_on_non_null" (i32.const 0x4))
  (i32.const 0xffff_ffff)
)
(assert_return (invoke "br_on_non_i31" (i32.const 0x0)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_non_i31" (i32.const 0x1)) (i32.const 0x7))
(assert_return (invoke "br_on_non_i31" (i32.const 0x2)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_non_i31" (i32.const 0x3)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_non_i31" (i32.const 0x4)) (i32.const 0xffff_ffff))
(assert_return
  (invoke "br_on_non_struct" (i32.const 0x0))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "br_on_non_struct" (i32.const 0x1))
  (i32.const 0xffff_ffff)
)
(assert_return (invoke "br_on_non_struct" (i32.const 0x2)) (i32.const 0x6))
(assert_return
  (invoke "br_on_non_struct" (i32.const 0x3))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "br_on_non_struct" (i32.const 0x4))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "br_on_non_array" (i32.const 0x0))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "br_on_non_array" (i32.const 0x1))
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "br_on_non_array" (i32.const 0x2))
  (i32.const 0xffff_ffff)
)
(assert_return (invoke "br_on_non_array" (i32.const 0x3)) (i32.const 0x3))
(assert_return
  (invoke "br_on_non_array" (i32.const 0x4))
  (i32.const 0xffff_ffff)
)
(assert_return (invoke "null-diff" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "null-diff" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "null-diff" (i32.const 0x2)) (i32.const 0x1))
(assert_return (invoke "null-diff" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "null-diff" (i32.const 0x4)) (i32.const 0x0))
(module binary
  "\00\61\73\6d\01\00\00\00\01\bf\80\80\80\00\09\50"
  "\00\5f\00\50\01\00\5f\01\7f\00\50\01\00\5f\01\7f"
  "\00\50\01\01\5f\02\7f\00\7f\00\50\01\02\5f\02\7f"
  "\00\7f\00\50\01\00\5f\02\7f\00\7f\00\50\01\00\5f"
  "\00\50\01\06\5f\02\7f\00\7f\00\60\00\00\03\84\80"
  "\80\80\00\03\08\08\08\04\84\80\80\80\00\01\6b\00"
  "\14\07\99\80\80\80\00\02\08\74\65\73\74\2d\73\75"
  "\62\00\01\0a\74\65\73\74\2d\63\61\6e\6f\6e\00\02"
  "\0a\e6\85\80\80\00\03\ba\80\80\80\00\00\41\00\fb"
  "\01\00\26\00\41\0a\fb\01\00\26\00\41\01\fb\01\01"
  "\26\00\41\0b\fb\01\02\26\00\41\02\fb\01\03\26\00"
  "\41\0c\fb\01\04\26\00\41\03\fb\01\05\26\00\41\04"
  "\fb\01\07\26\00\0b\87\84\80\80\00\00\10\00\02\6b"
  "\d0\6b\fb\19\03\00\6b\00\41\00\25\00\fb\19\03\00"
  "\6b\00\41\01\25\00\fb\19\03\00\6b\00\41\02\25\00"
  "\fb\19\03\00\6b\00\41\03\25\00\fb\19\03\00\6b\00"
  "\41\04\25\00\fb\19\03\00\6b\00\41\00\25\00\fb\19"
  "\01\00\6b\00\41\01\25\00\fb\19\01\00\6b\00\41\02"
  "\25\00\fb\19\01\00\6b\00\41\03\25\00\fb\19\01\00"
  "\6b\00\41\04\25\00\fb\19\01\00\6b\00\d0\6b\fb\19"
  "\03\00\6b\01\41\01\25\00\fb\19\03\00\6b\01\41\02"
  "\25\00\fb\19\03\00\6b\01\41\01\25\00\fb\19\01\00"
  "\6b\01\41\02\25\00\fb\19\01\00\6b\01\d0\6b\fb\19"
  "\03\00\6b\03\41\02\25\00\fb\19\03\00\6b\03\41\02"
  "\25\00\fb\19\01\00\6b\03\d0\6b\fb\19\03\00\6b\05"
  "\41\03\25\00\fb\19\03\00\6b\05\41\03\25\00\fb\19"
  "\01\00\6b\05\d0\6b\fb\19\03\00\6b\07\41\04\25\00"
  "\fb\19\03\00\6b\07\41\04\25\00\fb\19\01\00\6b\07"
  "\02\6b\d0\6b\fb\19\01\00\6b\00\0b\1a\02\6b\d0\6b"
  "\fb\19\01\00\6b\01\0b\1a\02\6b\41\00\25\00\fb\19"
  "\01\00\6b\01\0b\1a\02\6b\41\03\25\00\fb\19\01\00"
  "\6b\01\0b\1a\02\6b\41\04\25\00\fb\19\01\00\6b\01"
  "\0b\1a\02\6b\d0\6b\fb\19\01\00\6b\03\0b\1a\02\6b"
  "\41\00\25\00\fb\19\01\00\6b\03\0b\1a\02\6b\41\01"
  "\25\00\fb\19\01\00\6b\03\0b\1a\02\6b\41\03\25\00"
  "\fb\19\01\00\6b\03\0b\1a\02\6b\41\04\25\00\fb\19"
  "\01\00\6b\03\0b\1a\02\6b\d0\6b\fb\19\01\00\6b\05"
  "\0b\1a\02\6b\41\00\25\00\fb\19\01\00\6b\05\0b\1a"
  "\02\6b\41\01\25\00\fb\19\01\00\6b\05\0b\1a\02\6b"
  "\41\02\25\00\fb\19\01\00\6b\05\0b\1a\02\6b\41\04"
  "\25\00\fb\19\01\00\6b\05\0b\1a\02\6b\d0\6b\fb\19"
  "\01\00\6b\07\0b\1a\02\6b\41\00\25\00\fb\19\01\00"
  "\6b\07\0b\1a\02\6b\41\01\25\00\fb\19\01\00\6b\07"
  "\0b\1a\02\6b\41\02\25\00\fb\19\01\00\6b\07\0b\1a"
  "\02\6b\41\03\25\00\fb\19\01\00\6b\07\0b\1a\0f\0b"
  "\00\0b\95\81\80\80\00\00\10\00\02\6b\41\00\25\00"
  "\fb\19\01\00\6b\00\41\01\25\00\fb\19\01\00\6b\00"
  "\41\02\25\00\fb\19\01\00\6b\00\41\03\25\00\fb\19"
  "\01\00\6b\00\41\04\25\00\fb\19\01\00\6b\00\41\0a"
  "\25\00\fb\19\01\00\6b\00\41\0b\25\00\fb\19\01\00"
  "\6b\00\41\0c\25\00\fb\19\01\00\6b\00\41\01\25\00"
  "\fb\19\01\00\6b\02\41\02\25\00\fb\19\01\00\6b\02"
  "\41\0b\25\00\fb\19\01\00\6b\01\41\0c\25\00\fb\19"
  "\01\00\6b\01\41\02\25\00\fb\19\01\00\6b\04\41\0c"
  "\25\00\fb\19\01\00\6b\03\0f\0b\00\0b"
)
(invoke "test-sub")
(invoke "test-canon")
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\03\5f"
  "\00\60\01\64\6e\01\64\6e\60\01\6e\01\6e\03\84\80"
  "\80\80\00\03\01\02\02\0a\ba\80\80\80\00\03\8e\80"
  "\80\80\00\00\02\64\00\20\00\fb\19\00\01\6e\00\0b"
  "\0b\8e\80\80\80\00\00\02\64\00\20\00\fb\19\01\01"
  "\6e\00\0b\0b\8e\80\80\80\00\00\02\63\00\20\00\fb"
  "\19\03\01\6e\00\0b\0b"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\5f"
    "\00\60\01\64\6e\01\64\6e\03\82\80\80\80\00\01\01"
    "\0a\94\80\80\80\00\01\8e\80\80\80\00\00\02\64\00"
    "\20\00\fb\19\03\01\6e\00\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\5f"
    "\00\60\01\64\6e\01\64\6e\03\82\80\80\80\00\01\01"
    "\0a\95\80\80\80\00\01\8f\80\80\80\00\00\02\63\00"
    "\20\00\fb\19\02\01\6e\00\0b\d4\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\5f"
    "\00\60\01\6e\01\64\6e\03\82\80\80\80\00\01\01\0a"
    "\94\80\80\80\00\01\8e\80\80\80\00\00\02\64\00\20"
    "\00\fb\19\01\01\6e\00\0b\0b"
  )
  "type mismatch"
)
