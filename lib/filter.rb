require 'isNil.rb'

module Filter
    extend IsNil
    def filter
        filterProc = -> (array, filter) {
            if !array.is_a?(Array) or self.isNil[filter]
                return []
            end

            if filter.is_a?(Hash)
                filteredArr = []
                array.each do |v|
                    match = true
                    filter.each do |key, value|
                        if (value != v[key])
                            match = false
                            break
                        end
                    end

                    if (match == true)
                        filteredArr << v
                    end
                end

                return filteredArr
            end

            array.select { |x| filter[x] }
        }
    end
end
