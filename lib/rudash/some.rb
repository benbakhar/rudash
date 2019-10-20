module Rudash
  module Some
    def some?(array, filter)
      filtered_arr = self.filter(array, filter)
      filtered_arr.length != 0
    end
  end
end
