require_relative '../utils/path_resolver.rb'
require_relative '../utils/nested_path_creator.rb'
require_relative 'get.rb'

module Set
    extend Get

    def set(object, path, value)
        return object if !object.is_a?(Hash) && !object.is_a?(Array)

        resolved_path = PathResolver.resolve(path)
        NestedPathCreator.create_path_if_not_exist(object, resolved_path)

        *initial_path, last = resolved_path

        last_key = last.match(/^(\d)+$/) ? last.to_i : last.to_sym

        if initial_path.size == 0
            object[last_key] = value
            return object
        end

        last_parent = self.get(object, initial_path)
        last_parent[last_key] = value
        object
    end
end
