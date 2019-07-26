module Rudash
    module Without
        def without(array, *values)
            return [] if !array.is_a?(Array)
            self.difference(array, values)
        end
    end
end
