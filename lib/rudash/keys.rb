module Keys
    def keys(value)
        case value
            when Hash
                value.map { |key, value| "#{key}" }
            when Array
                value.map.with_index { |value, index| "#{index}" }
            else
                []
        end
    end
end
