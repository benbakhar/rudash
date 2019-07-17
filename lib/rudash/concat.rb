require_relative 'is_nil.rb'

module Concat
    extend IsNil

    def concat
        concat_proc = -> (head, *values) {
            head_arr = head.is_a?(Array) ? head : [head]
            if values.size == 0
                return head_arr
            else
                return head_arr + self.concat[*values]
            end
        }
    end
end
