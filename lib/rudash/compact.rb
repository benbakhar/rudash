require_relative 'is_nil.rb'

module Compact
    extend IsNil

    def compact(array)
        return [] if !array.is_a?(Array)
        array.compact
    end
end
