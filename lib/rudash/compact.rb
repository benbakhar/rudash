require_relative 'is_nil.rb'

module Rudash
    module Compact
        extend Rudash

        def compact(array)
            return [] if !array.is_a?(Array)
            array.compact
        end
    end
end
