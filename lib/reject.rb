require 'filter.rb'
require 'is_nil.rb'

module Reject
    extend IsNil
    extend Filter
    def reject
        rejectProc = -> (array, filter) {
            if !array.is_a?(Array) or self.is_nil[filter]
                return []
            end

            filteredItems = self.filter[array, filter]
            array - filteredItems
        }
    end
end
