require 'filter.rb'

module FindLast
    extend Filter

    def find_last
        find_last_proc = -> (array, filter) {
            filtered_arr = self.filter[array, filter]
            
            filtered_arr[filtered_arr.length - 1]
        }
    end
end
