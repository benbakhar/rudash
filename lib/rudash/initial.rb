module Initial
    def initial(array)
        return [] if !array.is_a?(Array)
        *initial, last = array
        initial
    end
end
