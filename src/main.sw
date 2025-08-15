predicate;

configurable {
    LOCK_SCRIPT_HASH: b256 = 0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef, 
}

pub fn main() -> bool {
    // equivalent to std::tx::tx_script_bytecode_hash().unwrap() == LOCK_SCRIPT_HASH

    __gtf::<u8>(0, 0x001) == 0u8 && {
        let mut result_buffer = b256::zero();
        let script_length = __gtf::<u64>(0, 0x003);
        let script_ptr = __gtf::<raw_ptr>(0, 0x009);
        let script_hash: b256 = asm(hash: result_buffer, ptr: script_ptr, len: script_length) {
            s256 hash ptr len;
            hash: b256
        };
        script_hash == LOCK_SCRIPT_HASH
    }
}
