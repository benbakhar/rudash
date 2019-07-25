require_relative 'reduce.rb'
require_relative '../utils/index.rb'

module ReduceRight
    extend Reduce

    def reduce_right(collection, *rest_args)
        reversed_collection = Utils.force_reverse(collection)
        self.reduce(reversed_collection, *rest_args)
    end
end
