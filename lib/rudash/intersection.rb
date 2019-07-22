require_relative 'reduce.rb'

module Intersection
    extend Reduce

    def intersection(*values)

        intersection_reducer = -> (acc, current) {
            return [] if !current.is_a?(Array) or !acc.is_a?(Array)
            acc & current
        }

        self.reduce(values, intersection_reducer, values[0])
    end
end
