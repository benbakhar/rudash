require_relative 'identity.rb'
require_relative 'get.rb'
require_relative 'set.rb'
require_relative 'head.rb'

module Update
    extend Identity
    extend Get
    extend Set
    extend Head

    def update(object, path, *rest_args)
        updater = self.head(rest_args) || self.method(:identity)
        current_value = self.get(object, path)
        self.set(object, path, updater.(current_value))
        object
    end
end
