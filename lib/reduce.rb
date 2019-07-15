module Reduce
    def reduce
        reduce_proc = -> (collection, *rest_args) {
            reducer = rest_args[0]
            initial_state = rest_args[1]

            col = collection.is_a?(String) ? collection.split('') : collection

            case rest_args.size
                when 1
                    return col.reduce { |acc, current|
                        if col.is_a?(Hash)
                            reducer.arity == 2 ?
                                reducer[acc, current[1]] :
                                reducer[acc, current[1], current[0]]
                        else
                            reducer[acc, current]
                        end
                    }
                when 2
                    return col.reduce(initial_state) { |acc, current|
                        if col.is_a?(Hash)
                            reducer.arity == 2 ?
                                reducer[acc, current[1]] :
                                reducer[acc, current[1], current[0]]
                        else
                            reducer[acc, current]
                        end
                    }
                else
                    return nil
            end
        }
    end
end
