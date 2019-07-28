module Rudash
    module Negate
        def negate(a_proc)
            case a_proc
                when Proc, Method
                    negate_proc = -> (*args) {
                        !a_proc.(*args)
                    }
                else
                    raise 'Expected a Proc'
            end
        end
    end
end
