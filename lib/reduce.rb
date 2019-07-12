module Reduce
    def reduce
        reduce_proc = -> (*args) {
            array = args[0]
            reducer = args[1]
            initial_state = args[2]

            if !array.is_a?(Array)
                return nil
            end

            case args.size
                when 2
                    return array.reduce { |acc, current| reducer[acc, current] }
                when 3
                    return array.reduce(initial_state) { |acc, current| reducer[acc, current] }
                else
                    return nil
            end
        }
    end
end
