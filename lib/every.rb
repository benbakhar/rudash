require 'filter.rb'

module Every
    extend Filter
    def every
        everyProc = -> (array, filter) {
            filteredArr = self.filter[array, filter]
            
            filteredArr.length == array.length
        }

        everyProc
    end
end
