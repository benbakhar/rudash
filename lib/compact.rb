require 'is_nil.rb'

module Compact
    extend IsNil

    def compact
        compact_proc = -> (array) {
            return [] if !array.is_a?(Array)
            array.compact
        }
    end
end
