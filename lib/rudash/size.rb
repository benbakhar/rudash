module Rudash
  module Default
    def size(something)
      return 0 if self.nil?(something)

      something.size
    end
  end
end
