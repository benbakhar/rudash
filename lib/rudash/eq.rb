module Eq
    def eq?
        eq_proc = -> (object, other) {
            object.equal?(other)
        }
    end
end
