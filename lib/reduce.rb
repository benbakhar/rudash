module Reduce
    def reduce
        reduceProc = -> (*args) {
            array = args[0]
            reducer = args[1]
            initialState = args[2]

            if !array.is_a?(Array)
                return nil
            end

            case args.size
                when 2
                    return array.reduce { |acc, current| reducer[acc, current] }
                when 3
                    return array.reduce(initialState) { |acc, current| reducer[acc, current] }
                else
                    return nil
            end
        }

        reduceProc
    end
end
