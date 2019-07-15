module Head
    def head
        head_proc = -> (array) {
            return nil if !array.is_a?(Array)
            array.first
        }
    end
end
