require 'filter.rb'

module FindLast
    extend Filter

    def find_last
        findLastProc = -> (array, filter) {
            filteredArr = self.filter[array, filter]
            
            filteredArr[filteredArr.length - 1]
        }
    end
end
