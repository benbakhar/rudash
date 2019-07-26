require_relative 'get.rb'
require_relative 'map.rb'

module Rudash
    module At
        extend Rudash
    
        def at(object, paths)
            get_mapper = -> (path) {
                self.get(object, path)
            }
    
            self.map(paths, get_mapper)
        end
    end
end
