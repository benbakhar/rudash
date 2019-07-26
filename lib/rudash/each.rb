require_relative 'map.rb'

module Rudash
    module Each
        extend Rudash
    
        def each(collection, *rest_args)
            self.map(collection, *rest_args)
            collection
        end
    
        def for_each(*args)
            self.each(*args)
        end
    end
end
