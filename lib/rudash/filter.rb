module Rudash
    module Filter
        def filter(collection, *rest_args)
            predicate_fn = self.head(rest_args) || self.method(:identity)
    
            if predicate_fn.is_a?(Hash)
                slice_matcher = Rudash::SubsetDeepMatch.subset_deep_match?.(predicate_fn)
                return self.filter(collection, slice_matcher) 
            end

            return [] if !Rudash::Utils.is_function?(predicate_fn)
    
            if collection.is_a?(Array)
                return collection.select.with_index { |x, idx|
                    Rudash::DynamicArgsCount.call(predicate_fn, x, idx)
                }
            elsif collection.is_a?(Hash)
                return collection.select { |k, v|
                    Rudash::DynamicArgsCount.call(predicate_fn, v, k)
                }.values
            else
                return []
            end
        end
    end
end
