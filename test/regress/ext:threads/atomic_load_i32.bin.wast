(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\60"
  "\00\00\60\00\01\7f\03\85\80\80\80\00\04\00\01\01"
  "\01\05\83\80\80\80\00\01\00\01\07\d4\80\80\80\00"
  "\04\04\6d\61\69\6e\00\00\14\74\65\73\74\5f\69\33"
  "\32\5f\61\74\6f\6d\69\63\5f\6c\6f\61\64\00\01\17"
  "\74\65\73\74\5f\69\33\32\5f\61\74\6f\6d\69\63\5f"
  "\6c\6f\61\64\38\5f\75\00\02\18\74\65\73\74\5f\69"
  "\33\32\5f\61\74\6f\6d\69\63\5f\6c\6f\61\64\31\36"
  "\5f\75\00\03\0a\c4\80\80\80\00\04\97\80\80\80\00"
  "\00\41\00\fe\10\02\00\1a\41\00\fe\12\00\00\1a\41"
  "\00\fe\13\01\00\1a\0b\88\80\80\80\00\00\41\00\fe"
  "\10\02\00\0b\88\80\80\80\00\00\41\00\fe\12\00\00"
  "\0b\88\80\80\80\00\00\41\00\fe\13\01\00\0b"
)
(assert_return (invoke "test_i32_atomic_load") (i32.const 0x0))
(assert_return (invoke "test_i32_atomic_load8_u") (i32.const 0x0))
(assert_return (invoke "test_i32_atomic_load16_u") (i32.const 0x0))
(assert_return (invoke "main"))
