require 'filter.rb'

module Find
    extend Filter
    def find
        find_proc = -> (array, filter) {
            filtered_arr = self.filter[array, filter]
            
            filtered_arr[0]
        }
    end
end
