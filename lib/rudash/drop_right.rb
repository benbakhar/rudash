module Rudash
  module Default
    def drop_right(array, *rest_args)
      return [] unless self.array?(array)

      n = self.head(rest_args) || 1
      return array if n <= 0

      self.take(array, self.size(array) - n)
    end
  end
end
