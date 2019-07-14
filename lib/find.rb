require 'filter.rb'
require 'head.rb'
require 'identity.rb'

module Find
    extend Filter
    extend Head
    extend Identity

    def find
        find_proc = -> (collection, *rest_args) {
            filter_proc = self.head[rest_args] || self.identity
            filtered_arr = self.filter[collection, filter_proc]
            
            filtered_arr[0]
        }
    end
end
