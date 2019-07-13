require 'is_nil.rb'
require 'identity.rb'
require 'head.rb'

module Filter
    extend IsNil
    extend Identity
    extend Head

    def filter
        filter_proc = -> (collection, *rest_args) {
            filter = self.head[rest_args] || self.identity

            if collection.is_a?(Array) and filter.is_a?(Hash)
                filtered_arr = []
                collection.each do |v|
                    match = true
                    filter.each do |key, value|
                        if (value != v[key])
                            match = false
                            break
                        end
                    end

                    if (match == true)
                        filtered_arr << v
                    end
                end

                return filtered_arr
            elsif collection.is_a?(Array)
                return collection.select.with_index { |x, idx| filter[x, idx] }
            elsif collection.is_a?(Hash)
                return collection.select { |k, v| filter[v, k] }
            else
                return []
            end
        }
    end
end
