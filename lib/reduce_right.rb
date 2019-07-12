require 'reduce.rb'

module ReduceRight
    extend Reduce

    def reduce_right
        reduce_right_proc = -> (*args) {
            array = args[0]

            if !array.is_a?(Array)
                return nil
            end

            reversed_array = array.reverse
            self.reduce[reversed_array, *args[1..-1]]
        }
    end
end
