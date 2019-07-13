require 'is_nil.rb'

module Filter
    extend IsNil
    def filter
        filter_proc = -> (array, filter) {
            if !array.is_a?(Array) or self.is_nil?[filter]
                return []
            end

            if filter.is_a?(Hash)
                filtered_arr = []
                array.each do |v|
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
            end

            array.select { |x| filter[x] }
        }
    end
end
