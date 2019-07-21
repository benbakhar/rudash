require_relative 'filter.rb'

module Every
    extend Filter

    def every?(array, filter)
        filtered_arr = self.filter(array, filter)
        filtered_arr.length == array.length
    end
end
