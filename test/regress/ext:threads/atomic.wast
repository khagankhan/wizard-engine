(module
    (memory 1)
    (func (export "main") (result i32)
        i32.const 65520
        i32.atomic.load offset=8
    )
)

(assert_return (invoke "main") (i32.const 0))
