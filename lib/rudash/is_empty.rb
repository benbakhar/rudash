module Rudash
  module IsEmpty
    def is_empty?(value)
      case value
      when Hash, Array
        value.empty?
      else
        true
      end
    end
  end
end
