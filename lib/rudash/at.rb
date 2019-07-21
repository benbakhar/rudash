require_relative 'get.rb'
require_relative 'map.rb'

module At
    extend Get
    extend Map

    def at(object, paths)
        get_mapper = -> (path) {
            self.get(object, path)
        }

        self.map(paths, get_mapper)
    end
end
