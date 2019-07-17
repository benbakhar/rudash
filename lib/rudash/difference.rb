require_relative 'reduce.rb'

module Difference
    extend Reduce

    def difference
        difference_proc = -> (*values) {
            diff_reducer = -> (acc, current) {
                return [] if !acc.is_a?(Array)
                return acc if !current.is_a?(Array)

                acc - current
            }

            self.reduce[values, diff_reducer]
        }
    end
end
