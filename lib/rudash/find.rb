require_relative 'filter.rb'
require_relative 'head.rb'
require_relative 'identity.rb'

module Rudash
    module Find
        extend Rudash
    
        def find(collection, *rest_args)
            filter_proc = self.head(rest_args) || self.method(:identity)
            filtered_arr = self.filter(collection, filter_proc)
            
            filtered_arr[0]
        end
    end
end
