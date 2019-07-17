require_relative 'map.rb'

module Each
    extend Map

    def each
        each_proc = -> (collection, *rest_args) {
            self.map[collection, *rest_args]
            collection
        }
    end

    def for_each
        self.each
    end
end
