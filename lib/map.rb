module Map
    def map
        map_proc = -> (collection, *rest_args) {
            mapper_proc = self.head[rest_args] || self.identity

            col = collection.is_a?(String) ? collection.split('') : collection

            if col.is_a?(Array)
                return mapper_proc.arity == 1 ?
                    col.map { |value| mapper_proc[value] } :
                    col.map.with_index { |value, index| mapper_proc[value, index] }

            elsif col.is_a?(Hash)
                return mapper_proc.arity == 1 ? 
                    col.map { |k,v| mapper_proc[v] } :
                    col.map { |k,v| mapper_proc[v, k] }
            else
                return []
            end
        }
    end
end
