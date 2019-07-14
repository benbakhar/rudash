module Reduce
    def reduce
        reduce_proc = -> (*args) {
            collection = args[0]
            reducer = args[1]
            initial_state = args[2]

            case args.size
                when 2
                    return collection.reduce { |acc, current|
                        collection.is_a?(Hash) ? reducer[acc, current[1]] : reducer[acc, current]
                    }
                when 3
                    return collection.reduce(initial_state) { |acc, current|
                        collection.is_a?(Hash) ? reducer[acc, current[1]] : reducer[acc, current]
                    }
                else
                    return nil
            end
        }
    end
end
