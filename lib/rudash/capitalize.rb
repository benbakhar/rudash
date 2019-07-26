module Rudash
    module Capitalize
        def capitalize(value)
            case value
                when String
                    value.capitalize
                else
                    value.to_s
            end
        end
    end
end
