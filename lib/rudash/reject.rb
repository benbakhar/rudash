require_relative '../utils/subset_deep_match.rb'

module Rudash
    module Reject
        def reject(collection, *rest_args)
            filter = self.head(rest_args) || self.method(:identity)

            if filter.is_a?(Hash)
                slice_matcher = Rudash::SubsetDeepMatch.subset_deep_match?.(filter)
                return self.filter(collection, self.negate(slice_matcher)) 
            elsif filter.is_a?(Proc) || filter.is_a?(Method)
                return self.filter(collection, self.negate(filter))
            else
                return []
            end
        end
    end
end
