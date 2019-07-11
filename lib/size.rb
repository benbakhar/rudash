require 'isNil.rb'

module Size
    extend IsNil
    def size
        sizeProc = -> (something) {
            return 0 if self.isNil[something]

            something.size
        }
    end
end
