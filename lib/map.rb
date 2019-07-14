module Map
    def map
        map_proc = -> (array, mapper_proc) {
            mapper_proc.arity == 1 ?
                array.map { |value| mapper_proc[value] } :
                array.map.with_index { |value, index| mapper_proc[value, index] }
        }
    end
end
