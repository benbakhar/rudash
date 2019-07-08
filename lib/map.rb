module Map
    def map
        mapProc = -> (array, mapperFn) {
            array.map { |value| mapperFn[value] }
        }

        mapProc
    end
end
