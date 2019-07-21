require_relative 'reduce.rb'
require_relative 'filter.rb'

module Get
    extend Reduce
    extend Filter

    def get(hash, path, *rest_args)
        return nil if !path.is_a?(String) and !path.is_a?(Array)
        return nil if !hash.is_a?(Array) and !hash.is_a?(Hash)

        transform_path = -> (path) {
            normalized_path = path

            if normalized_path.is_a?(Array)
                normalized_path = normalized_path.join('.') 
            end

            filter_not_empty = -> (value) {
                value != ''
            }

            splitted_hash = self.filter(
                normalized_path.split(/[.\[\]]/),
                filter_not_empty
            )
        }

        splitted_hash = transform_path[path]
        
        get_reducer = -> (acc, current) {
            return nil if acc.nil?

            if acc.is_a?(Array) and current.match(/^(\d)+$/)
                acc[current.to_i]
            elsif acc.is_a?(Array) and !current.match(/^(\d)+$/)
                nil
            elsif acc.is_a?(Hash)
                acc[current.to_sym] || acc[current]
            else
                nil
            end
        }

        self.reduce(splitted_hash, get_reducer, hash)
    end
end
