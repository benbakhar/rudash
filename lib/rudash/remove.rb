require_relative 'identity.rb'
require_relative 'filter.rb'

module Remove
    extend Identity
    extend Negate
    extend Filter

    def remove(array, *rest_args)
        predicate = self.head(rest_args) || self.method(:identity)
        return [] if !array.is_a?(Array)
        removed_items = self.filter(array, predicate)

        array.replace(array - removed_items)
        removed_items
    end
end
