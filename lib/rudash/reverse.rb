module Rudash
  module Default
    def reverse(value)
      case value
      when Array, String
        value.reverse
      else
        value
      end
    end
  end
end
