require 'reject.rb'
require 'is_nil.rb'

module Compact
    extend Reject
    extend IsNil
    def compact
        compact_proc = -> (array) {
            if !array.is_a?(Array)
                return []
            end

            self.reject[array, self.is_nil]
        }
    end
end
