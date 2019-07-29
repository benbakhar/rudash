require_relative '../utils/index.rb'
require_relative '../utils/dynamic_args_count.rb'

module Rudash
    module Reduce
        def reduce(collection, *rest_args)
            reducer = rest_args[0]
            initial_state = rest_args[1]
            col = collection.is_a?(String) ? collection.split('') : collection

            return self.reduce(collection, -> () { nil }) if !Rudash::Utils.is_function?(reducer)
    
            case rest_args.size
                when 1
                    return col.reduce { |acc, current|
                        if col.is_a?(Hash)
                            Rudash::DynamicArgsCount.call(reducer, acc, current[1], current[0])
                        else
                            Rudash::DynamicArgsCount.call(reducer, acc, current)
                        end
                    }
                when 2
                    return col.reduce(initial_state) { |acc, current|
                        if col.is_a?(Hash)
                            Rudash::DynamicArgsCount.call(reducer, acc, current[1], current[0])
                        else
                            Rudash::DynamicArgsCount.call(reducer, acc, current)
                        end
                    }
                else
                    return nil
            end
        end
    end
end
