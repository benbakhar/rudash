module IsHash
    def is_hash?
        is_hash_proc = -> (value) { value.is_a?(Hash) }
    end
end
