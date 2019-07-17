module Uniq
    def uniq
        uniq_proc = -> (value) {
            case value
                when String
                    uniq_proc[value.split('')]
                when Array
                    value.uniq
                else
                    []
            end
        }
    end
end
