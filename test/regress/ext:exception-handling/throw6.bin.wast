(module binary
  "\00\61\73\6d\01\00\00\00\01\a3\80\80\80\00\08\60"
  "\00\00\60\01\7f\00\60\01\7d\00\60\01\7e\00\60\01"
  "\7c\00\60\02\7f\7f\00\60\01\7f\01\7f\60\00\02\7f"
  "\7f\03\89\80\80\80\00\08\06\02\03\04\00\00\00\00"
  "\0d\8d\80\80\80\00\06\00\00\00\01\00\02\00\03\00"
  "\04\00\05\07\81\81\80\80\00\07\08\74\68\72\6f\77"
  "\2d\69\66\00\00\0f\74\68\72\6f\77\2d\70\61\72\61"
  "\6d\2d\66\33\32\00\01\0f\74\68\72\6f\77\2d\70\61"
  "\72\61\6d\2d\69\36\34\00\02\0f\74\68\72\6f\77\2d"
  "\70\61\72\61\6d\2d\66\36\34\00\03\11\74\68\72\6f"
  "\77\2d\70\6f\6c\79\6d\6f\72\70\68\69\63\00\04\17"
  "\74\68\72\6f\77\2d\70\6f\6c\79\6d\6f\72\70\68\69"
  "\63\2d\62\6c\6f\63\6b\00\05\0e\74\65\73\74\2d\74"
  "\68\72\6f\77\2d\31\2d\32\00\07\0a\fd\80\80\80\00"
  "\08\8e\80\80\80\00\00\20\00\41\00\47\04\40\08\00"
  "\0b\41\00\0b\86\80\80\80\00\00\20\00\08\02\0b\86"
  "\80\80\80\00\00\20\00\08\03\0b\86\80\80\80\00\00"
  "\20\00\08\04\0b\86\80\80\80\00\00\08\00\08\01\0b"
  "\89\80\80\80\00\00\02\7f\08\00\0b\08\01\0b\88\80"
  "\80\80\00\00\41\01\41\02\08\05\0b\9d\80\80\80\00"
  "\00\02\07\1f\40\01\00\05\00\10\06\0b\0f\0b\41\02"
  "\47\04\40\00\0b\41\01\47\04\40\00\0b\0b"
)
(assert_exception (invoke "throw-polymorphic"))