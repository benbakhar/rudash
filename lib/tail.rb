module Tail
    def tail
        tailProc = -> (array) {
            if !array.is_a?(Array)
                return []
            end

            array[1..-1] || []
        }

        tailProc
    end
end
