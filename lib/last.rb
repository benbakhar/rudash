module Last
    def last
        last_proc = -> (array) {
            if !array.is_a?(Array)
                return nil
            end

            array.last
        }
    end
end
