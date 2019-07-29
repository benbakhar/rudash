require_relative '../utils/index.rb'
require_relative '../utils/subset_deep_match.rb'
require_relative '../utils/dynamic_args_count.rb'

module Rudash
    module Filter
        def filter(collection, *rest_args)
            filter = self.head(rest_args) || self.method(:identity)
    
            if filter.is_a?(Hash)
                slice_matcher = Rudash::SubsetDeepMatch.subset_deep_match?.(filter)
                return self.filter(collection, slice_matcher) 
            end

            return [] if !Rudash::Utils.is_function?(filter)
    
            if collection.is_a?(Array)
                return collection.select.with_index { |x, idx|
                    Rudash::DynamicArgsCount.call(filter, x, idx)
                }
            elsif collection.is_a?(Hash)
                return collection.select { |k, v|
                    Rudash::DynamicArgsCount.call(filter, v, k)
                }.values
            else
                return []
            end
        end
    end
end
