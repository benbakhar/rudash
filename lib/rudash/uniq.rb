module Rudash
  module Default
    def uniq(value)
      case value
      when String
        self.uniq(value.split(''))
      when Array
        value.uniq
      else
        []
      end
    end
  end
end
