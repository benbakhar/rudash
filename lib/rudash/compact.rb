module Rudash
    module Compact
        def compact(array)
            return [] if !array.is_a?(Array)
            array.compact
        end
    end
end
