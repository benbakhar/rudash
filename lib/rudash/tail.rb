module Rudash
  module Tail
    def tail(array)
      return [] if !array.is_a?(Array)
      array[1..-1] || []
    end
  end
end
