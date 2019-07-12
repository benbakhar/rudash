require 'filter.rb'

module Some
    extend Filter
    def some
        some_proc = -> (array, filter) {
            filtered_arr = self.filter[array, filter]
            
            filtered_arr.length != 0
        }
    end
end
