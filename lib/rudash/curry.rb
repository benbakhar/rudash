module Curry
    def curry(a_proc)
        case a_proc
            when Proc
                a_proc.curry
            else
                raise 'Expected a Proc'
        end
    end
end
