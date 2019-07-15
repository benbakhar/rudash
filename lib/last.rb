module Last
    def last
        last_proc = -> (array) {
            return nil if !array.is_a?(Array)
            array.last
        }
    end
end
