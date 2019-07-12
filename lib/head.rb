module Head
    def head
        head_proc = -> (array) {
            if !array.is_a?(Array)
                return nil
            end

            array.first
        }
    end
end
