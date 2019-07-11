module Concat
    def concat
        concatProc = -> (object1, object2) {
            if object1.is_a?(Array) and object2.is_a?(Array)
                return object1 + object2
            elsif object1.is_a?(Array)
                return self.concat[object1, [object2]]
            elsif object2.is_a?(Array)
                return self.concat[[object1], object2]
            else
                return self.concat[[object1], [object2]]
            end
        }
    end
end
