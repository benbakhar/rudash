require_relative 'filter.rb'

module Every
    extend Filter

    def every?
        every_proc = -> (array, filter) {
            filtered_arr = self.filter[array, filter]
            
            filtered_arr.length == array.length
        }
    end
end
