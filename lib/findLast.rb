require 'filter.rb'

module FindLast
    extend Filter
    def findLast
        findLastProc = -> (array, filter) {
            filteredArr = self.filter[array, filter]
            
            filteredArr[filteredArr.length - 1]
        }
    end
end
