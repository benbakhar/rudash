require 'is_nil.rb'

module Size
    extend IsNil
    def size
        sizeProc = -> (something) {
            return 0 if self.is_nil[something]

            something.size
        }
    end
end
