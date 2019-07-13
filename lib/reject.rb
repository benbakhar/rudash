require 'filter.rb'
require 'is_nil.rb'

module Reject
    extend IsNil
    extend Filter
    def reject
        reject_proc = -> (array, filter) {
            if !array.is_a?(Array) or self.is_nil?[filter]
                return []
            end

            filtered_items = self.filter[array, filter]
            array - filtered_items
        }
    end
end
