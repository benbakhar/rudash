module Last
    def last
        lastProc = -> (array) {
            if !array.is_a?(Array)
                return nil
            end

            array.last
        }

        lastProc
    end
end
