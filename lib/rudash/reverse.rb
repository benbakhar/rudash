module Reverse
    def reverse
        reverse_proc = -> (value) {
            case value
                when Array, String
                    value.reverse
                else
                    value
            end
        }
    end
end
