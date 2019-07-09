require 'isNil.rb'
require 'filter.rb'

module Some
    extend IsNil
    extend Filter
    def some
        someProc = -> (array, filter) {
            filteredArr = self.filter[array, filter]
            
            filteredArr.length != 0
        }

        someProc
    end
end
