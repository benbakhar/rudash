require_relative 'is_nil.rb'
require_relative 'identity.rb'
require_relative 'head.rb'

module Filter
    extend IsNil
    extend Identity
    extend Head

    def filter(collection, *rest_args)
        filter = self.head(rest_args) || self.method(:identity)

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
