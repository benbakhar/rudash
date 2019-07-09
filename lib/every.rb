require 'isNil.rb'
require 'filter.rb'

module Every
    extend IsNil
    extend Filter
    def every
        someProc = -> (array, filter) {
            filteredArr = self.filter[array, filter]
            
            filteredArr.length == array.length
        }

        someProc
    end
end
