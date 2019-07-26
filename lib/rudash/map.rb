module Rudash
    module Map
        def map(collection, *rest_args)
            mapper_proc = self.head(rest_args) || self.method(:identity)
    
            col = collection.is_a?(String) ? collection.split('') : collection
    
            if col.is_a?(Array)
                begin
                    return col.map.with_index { |value, index| mapper_proc.(value, index) }
                rescue ArgumentError => e
                    begin
                        return col.map { |value| mapper_proc.(value) }
                    rescue ArgumentError => e
                        return col.map { mapper_proc.() }
                    end
                end
            elsif col.is_a?(Hash)
                begin
                    return col.map { |k,v| mapper_proc.(v, k) }
                rescue ArgumentError => e
                    begin
                        return col.map { |k,v| mapper_proc.(v) }
                    rescue ArgumentError => e
                        return col.map { mapper_proc.() }
                    end
                end
            else
                return []
            end
        end
    end
end
