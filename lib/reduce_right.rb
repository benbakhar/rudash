require 'reduce.rb'

module ReduceRight
    extend Reduce

    def reduce_right
        reduceRightProc = -> (*args) {
            array = args[0]

            if !array.is_a?(Array)
                return nil
            end

            reversedArray = array.reverse
            self.reduce[reversedArray, *args[1..-1]]
        }
    end
end
