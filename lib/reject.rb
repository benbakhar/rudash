require 'filter.rb'
require 'isNil.rb'

module Reject
    extend IsNil
    extend Filter
    def reject
        rejectProc = -> (array, filter) {
            if !array.is_a?(Array) or self.isNil[filter]
                return []
            end

            filteredItems = self.filter[array, filter]
            array - filteredItems
        }

        rejectProc
    end
end
