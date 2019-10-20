module Rudash
  module Negate
    def negate(a_proc)
      raise 'Expected a Proc/Method' if !Rudash::Utils.is_function?(a_proc)
      
      negate_proc = -> (*args) {
        !a_proc.(*args)
      }
    end
  end
end
