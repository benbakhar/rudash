require 'is_nil.rb'

module Size
    extend IsNil

    def size
        size_proc = -> (something) {
            return 0 if self.is_nil?[something]

            something.size
        }
    end
end
