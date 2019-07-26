require_relative 'is_nil.rb'

module Rudash
    module Size
        extend Rudash
    
        def size(something)
            return 0 if self.is_nil?(something)
            something.size
        end
    end
end
