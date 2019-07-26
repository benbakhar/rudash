require_relative '../rudash'

module Rudash
    module PathResolver
        def self.resolve(path)
            normalized_path = path
    
            if normalized_path.is_a?(Array)
                normalized_path = normalized_path.join('.') 
            end
    
            filter_not_empty = -> (value) {
                value != ''
            }
    
            splitted_hash = R_.filter(
                normalized_path.split(/[.\[\]]/),
                filter_not_empty
            )
        end
    end
end
