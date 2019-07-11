module Head
    def head
        headProc = -> (array) {
            if !array.is_a?(Array)
                return nil
            end

            array.first
        }
    end
end
