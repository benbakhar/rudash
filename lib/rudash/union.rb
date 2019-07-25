require_relative 'reduce.rb'
require_relative 'head.rb'

module Union
    extend Reduce
    extend Head

    def union(*values)

        union_reducer = -> (acc, current) {
            return acc if !current.is_a?(Array) || !acc.is_a?(Array)
            acc | current
        }

        head = self.head(values)
        return [] if !head.is_a?(Array)

        self.reduce(values, union_reducer, head)
    end
end
