(module
    (memory 1)
    (func (export "main") (result i64)
        i32.const 65520
        i64.atomic.load offset=8
    )
)

(assert_return (invoke "main") (i64.const 0))
