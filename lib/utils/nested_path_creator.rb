require_relative '../rudash'
require_relative './index.rb'

module NestedPathCreator
    def self.create_path_if_not_exist(object, resolved_path)
        path = R_.head(resolved_path)
        return nil if !resolved_path.is_a?(Array) || R_.is_nil?(path)

        path_key = Utils.match_number?(path) ? path.to_i : path.to_sym
        rest_paths = R_.tail(resolved_path)
        next_path = R_.head(rest_paths)
        value = R_.get(object, path)

        if R_.is_nil?(value) || (!value.is_a?(Hash) && !value.is_a?(Array))
            if next_path && Utils.match_number?(next_path)
                object[path_key] = []
            else
                object[path_key] = {}
            end
        end

        self.create_path_if_not_exist(
            R_.get(object, path),
            rest_paths
        )
    end
end
