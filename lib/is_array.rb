module IsArray
    def is_array?
        is_array_proc = -> (value) { value.is_a?(Array) }
    end
end
