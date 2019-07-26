require_relative 'filter.rb'
require_relative 'identity.rb'

module Rudash
    module FindLast
        extend Rudash
    
        def find_last(collection, *rest_args)
            filter_proc = self.head(rest_args) || self.method(:identity)
            filtered_arr = self.filter(collection, filter_proc)
            
            filtered_arr[filtered_arr.length - 1]
        end
    end
end
