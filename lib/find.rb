require 'filter.rb'

module Find
    extend Filter
    def find
        someProc = -> (array, filter) {
            filteredArr = self.filter[array, filter]
            
            filteredArr[0]
        }

        someProc
    end
end
