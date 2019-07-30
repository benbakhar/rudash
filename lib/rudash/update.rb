require_relative '../utils/index.rb'
require_relative '../utils/dynamic_args_count.rb'

module Rudash
    module Update
        def update(object, path, *rest_args)
            updater_fn = self.head(rest_args) || self.method(:identity)
            return object if !Rudash::Utils.is_function?(updater_fn)

            current_value = self.get(object, path)
            self.set(object, path, Rudash::DynamicArgsCount.call(updater_fn, current_value))
            object
        end
    end
end
