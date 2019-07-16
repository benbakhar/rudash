module Curry
    def curry
        curry_proc = -> (a_proc) {
            case a_proc
                when Proc
                    a_proc.curry
                else
                    raise 'Expected a Proc'
            end
            a_proc.curry
        }
    end
end
