module IsEmpty
    def is_empty?
        is_empty_proc = -> (value) {
            case value
                when Hash, Array
                    value.empty?
                else
                    true
            end
        }
    end
end
