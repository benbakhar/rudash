require_relative 'filter.rb'

module Rudash
    module Every
        extend Rudash
    
        def every?(array, filter)
            filtered_arr = self.filter(array, filter)
            filtered_arr.length == array.length
        end
    end
end
