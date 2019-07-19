require_relative 'each.rb'

module EachRight
    extend Each

    def each_right
        each_right_proc = -> (collection, *rest_args) {
            reversed_collection =
                case collection
                    when Array then collection.reverse
                    when Hash then collection.reverse_each.to_h
                    when String then collection.reverse
                    else []
                end

            self.each[reversed_collection, *rest_args]
            collection
        }
    end

    def for_each_right
        self.each_right
    end
end
