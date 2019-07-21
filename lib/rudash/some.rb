require_relative 'filter.rb'

module Some
    extend Filter

    def some?(array, filter)
        filtered_arr = self.filter(array, filter)
        filtered_arr.length != 0
    end
end
