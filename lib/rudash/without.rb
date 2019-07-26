require_relative 'difference.rb'

module Rudash
    module Without
        extend Rudash
    
        def without(array, *values)
            return [] if !array.is_a?(Array)
            self.difference(array, values)
        end
    end
end
