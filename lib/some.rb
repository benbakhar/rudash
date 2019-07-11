require 'filter.rb'

module Some
    extend Filter
    def some
        someProc = -> (array, filter) {
            filteredArr = self.filter[array, filter]
            
            filteredArr.length != 0
        }
    end
end
