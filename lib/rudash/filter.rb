require_relative 'is_nil.rb'
require_relative 'identity.rb'
require_relative 'head.rb'
require_relative '../utils/subset_deep_match.rb'

module Filter
    extend IsNil
    extend Identity
    extend Head

    def filter(collection, *rest_args)
        filter = self.head(rest_args) || self.method(:identity)

        if filter.is_a?(Hash)
            slice_matcher = SubsetDeepMatch.subset_deep_match?.(filter)
            return self.filter(collection, slice_matcher) 
        end

        if collection.is_a?(Array)
            begin
                return collection.select.with_index { |x, idx| filter[x, idx] }
            rescue ArgumentError => e
                return collection.select { |x| filter[x] }
            end
        elsif collection.is_a?(Hash)
            begin
                return collection.select { |k, v| filter[v, k] }
            rescue ArgumentError => e
                return collection.select { |k, v| filter[v] }
            end
        else
            return []
        end
    end
end
