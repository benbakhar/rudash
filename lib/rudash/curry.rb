module Rudash
  module Curry
    def curry(a_proc)
      a_proc.is_a?(Proc) ? a_proc.curry : (raise 'Expected a Proc')
    end
  end
end
