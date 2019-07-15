module Tail
    def tail
        tail_proc = -> (array) {
            return [] if !array.is_a?(Array)
            array[1..-1] || []
        }
    end
end
