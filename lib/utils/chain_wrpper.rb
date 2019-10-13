module Rudash
    module ChainUtils
        class ChainWrapper
            def initialize(value, r_)
                @value = value
                @r_ = r_
            end

            def value
                @value
            end

            def method_missing(method_name, *args, &block)
                begin
                    method = @r_.method(method_name.to_s)
                    result = method.(@value, *args)
                    self.class.new(result, @r_)
                rescue NameError => exception
                    raise NameError.new("\"#{method_name}\" doesn't exist in Rudash")
                end
            end
        end
    end
end
