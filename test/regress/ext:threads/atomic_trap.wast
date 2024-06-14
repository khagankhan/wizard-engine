(module
    (memory 1)
    (func (export "main")
	i32.const 0xffff_fff0
        i32.atomic.load offset=16
        drop
    )
)

(assert_trap (invoke "main") "out of bounds")
