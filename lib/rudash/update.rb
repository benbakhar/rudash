require_relative '../utils/index.rb'
require_relative '../utils/dynamic_args_count.rb'

module Rudash
    module Update
        def update(object, path, *rest_args)
            updater = self.head(rest_args) || self.method(:identity)
            return object if !Rudash::Utils.is_function?(updater)

            current_value = self.get(object, path)
            self.set(object, path, Rudash::DynamicArgsCount.call(updater, current_value))
            object
        end
    end
end
