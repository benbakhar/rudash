require_relative 'reduce.rb'

module ReduceRight
    extend Reduce

    def reduce_right(collection, *rest_args)
        reversed_collection =
            case collection
                when Array then collection.reverse
                when Hash then collection.reverse_each.to_h
                when String then collection.reverse
                else []
            end

        self.reduce(reversed_collection, *rest_args)
    end
end
