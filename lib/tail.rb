module Tail
    def tail
        tail_proc = -> (array) {
            if !array.is_a?(Array)
                return []
            end

            array[1..-1] || []
        }
    end
end
