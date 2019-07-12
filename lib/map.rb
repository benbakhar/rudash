module Map
    def map
        map_proc = -> (array, mapperFn) {
            array.map { |value| mapperFn[value] }
        }
    end
end
