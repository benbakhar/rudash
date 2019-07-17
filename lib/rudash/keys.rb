module Keys
    def keys
        keys_proc = -> (value) {
            case value
                when Hash
                    value.map { |key, value| "#{key}" }
                when Array
                    value.map.with_index { |value, index| "#{index}" }
                else
                    []
            end
        }
    end
end
