(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7e\03\82\80\80\80\00\01\00\05\83\80\80\80"
  "\00\01\00\01\07\88\80\80\80\00\01\04\6d\61\69\6e"
  "\00\00\0a\90\80\80\80\00\01\8a\80\80\80\00\00\41"
  "\f0\ff\03\fe\11\03\08\0b"
)
(assert_return (invoke "main") (i64.const 0x0))
