require_relative 'each.rb'
require_relative '../utils/index.rb'

module EachRight
    extend Each

    def each_right(collection, *rest_args)
        reversed_collection = Utils.force_reverse(collection)

        self.each(reversed_collection, *rest_args)
        collection
    end

    def for_each_right(*args)
        self.each_right(*args)
    end
end
