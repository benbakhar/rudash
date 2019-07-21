require_relative 'difference.rb'

module Without
    extend Difference

    def without(array, *values)
        return [] if !array.is_a?(Array)
        self.difference(array, values)
    end
end
