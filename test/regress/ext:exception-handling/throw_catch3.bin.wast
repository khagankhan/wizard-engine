(module binary
  "\00\61\73\6d\01\00\00\00\01\90\80\80\80\00\03\60"
  "\01\7f\00\60\02\7f\7f\00\60\02\7f\7f\01\7f\03\83"
  "\80\80\80\00\02\01\02\0d\85\80\80\80\00\02\00\00"
  "\00\00\07\88\80\80\80\00\01\04\74\65\73\74\00\01"
  "\0a\b3\80\80\80\00\02\90\80\80\80\00\00\20\00\04"
  "\40\20\01\08\00\05\20\01\08\01\0b\0b\98\80\80\80"
  "\00\00\06\40\20\00\20\01\10\00\07\00\41\21\6a\0f"
  "\07\01\41\2c\6a\0f\0b\00\0b"
)
(assert_return (invoke "test" (i32.const 0x0) (i32.const 0x4)) (i32.const 0x30))
(assert_return (invoke "test" (i32.const 0x1) (i32.const 0x4)) (i32.const 0x25))