require_relative 'reduce.rb'
require_relative 'head.rb'
require_relative 'filter.rb'

module Rudash
    module Union
        extend Rudash
    
        def union(*values)
    
            union_reducer = -> (acc, current) {
                return acc if !current.is_a?(Array) || !acc.is_a?(Array)
                acc | current
            }
    
            is_array = -> (value) { value.is_a?(Array) }
    
            arr_values = self.filter(values, is_array)
            head = self.head(arr_values)
    
            self.reduce(arr_values, union_reducer, head) || []
        end
    end
end
