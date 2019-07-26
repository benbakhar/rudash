require_relative '../rudash'

# This module was written to supply complex subset deep hash and array matching
# in order to give filter, some?, every? and find the ability to deep match with complex hash queries.
# See test_filter_hashes_by_deep_hash (filter.rb)

module SubsetDeepMatch
    def self.subset_deep_match?
        subset_matcher = -> (slice, hash) {
            match = true

            if (slice.is_a?(Array) && hash.is_a?(Array))
                return R_.every?(slice, -> (sliceVal) {
                    R_.some?(hash, -> (hashVal) {
                        self.subset_deep_match?.(sliceVal, hashVal)
                    })
                })
            end

            begin
                R_.each(hash, -> (v) {
                    R_.each(slice, -> (value, key) {
                        if (value.is_a?(Hash) && hash[key].is_a?(Hash))
                            match &= self.subset_deep_match?.(value, hash[key])
                        elsif (value.is_a?(Array) && hash[key].is_a?(Array))
                            match &= self.subset_deep_match?.(value, hash[key])
                        elsif (value != hash[key])
                            match = false
                        end
                    })

                    # That was done for performance manners since
                    # R_.each don't stop when returning false from the proc
                    # so we force it to stop by throwing an exception that we catch later
                    # It's the same hack for JavaScript forEach function.
                    raise if match == false
                })
            rescue
                return false
            end

            match
        }

        subset_matcher.curry
    end
end
