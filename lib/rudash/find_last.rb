require_relative 'filter.rb'

module FindLast
    extend Filter

    def find_last
        find_last_proc = -> (collection, *rest_args) {
            filter_proc = self.head[rest_args] || self.identity
            filtered_arr = self.filter[collection, filter_proc]
            
            filtered_arr[filtered_arr.length - 1]
        }
    end
end
