module Map
    def map
        map_proc = -> (collection, *rest_args) {
            mapper_proc = self.head[rest_args] || self.identity

            if collection.is_a?(Array)
                return mapper_proc.arity == 1 ?
                    collection.map { |value| mapper_proc[value] } :
                    collection.map.with_index { |value, index| mapper_proc[value, index] }

            elsif collection.is_a?(Hash)
                return mapper_proc.arity == 1 ? 
                    collection.map { |k,v| mapper_proc[v] } :
                    collection.map { |k,v| mapper_proc[v, k] }
            else
                return []
            end
        }
    end
end
