module IsNumber
    def is_number?
        is_number_proc = -> (value) { value.is_a?(Numeric) }
    end
end
