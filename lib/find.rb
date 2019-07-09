require 'filter.rb'

module Find
    extend Filter
    def find
        findProc = -> (array, filter) {
            filteredArr = self.filter[array, filter]
            
            filteredArr[0]
        }

        findProc
    end
end
