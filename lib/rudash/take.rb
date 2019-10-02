module Rudash
    module Take
        def take(array, *rest_args)
            return [] if !self.is_array?(array)
            count = self.head(rest_args) || 1

            begin
                return array.take(count)
            rescue
                return []
            end
        end
    end
end
