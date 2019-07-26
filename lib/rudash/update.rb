module Rudash
    module Update
        def update(object, path, *rest_args)
            updater = self.head(rest_args) || self.method(:identity)
            current_value = self.get(object, path)
            self.set(object, path, updater.(current_value))
            object
        end
    end
end
