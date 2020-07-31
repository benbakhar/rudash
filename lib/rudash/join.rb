module Rudash
  module Default
    def join(array, separator = ',')
      return '' unless array.is_a?(Array)

      array.join(separator.to_s)
    end
  end
end
