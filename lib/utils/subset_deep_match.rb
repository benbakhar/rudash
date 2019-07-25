module SubsetDeepMatch
    def self.subset_deep_match?
        subset_matcher = -> (slice, hash) {
            hash.each do ||
                slice.each do |key, value|
                    if (value != hash[key])
                        return false
                    end
                end
            end

            true
        }

        subset_matcher.curry
    end
end
