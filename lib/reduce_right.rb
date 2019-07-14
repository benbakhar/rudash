require 'reduce.rb'

module ReduceRight
    extend Reduce

    def reduce_right
        reduce_right_proc = -> (*args) {
            collection = args[0]

            reversed_collection =
            case collection
                when Array then collection.reverse
                when Hash then collection.reverse_each.to_h
            end

            self.reduce[reversed_collection, *args[1..-1]]
        }
    end
end
