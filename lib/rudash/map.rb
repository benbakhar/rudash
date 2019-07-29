require_relative '../utils/index.rb'
require_relative '../utils/dynamic_args_count.rb'

module Rudash
    module Map
        def map(collection, *rest_args)
            mapper_proc = self.head(rest_args) || self.method(:identity)
            col = collection.is_a?(String) ? collection.split('') : collection

            return self.map(collection, -> () { nil }) if !Rudash::Utils.is_function?(mapper_proc)
    
            if col.is_a?(Array)
                return col.map.with_index { |value, index|
                    Rudash::DynamicArgsCount.call(mapper_proc, value, index)
                }
            elsif col.is_a?(Hash)
                return col.map { |k,v|
                    Rudash::DynamicArgsCount.call(mapper_proc, v, k)
                }
            else
                return []
            end
        end
    end
end
