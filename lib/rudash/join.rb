module Rudash
    module Join
        def join(array, separator = ',')
            return '' if !array.is_a?(Array)
            stringified_separator = separator.is_a?(String) ? separator : separator.to_s
            array.join(stringified_separator)
        end
    end
end
