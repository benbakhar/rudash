module Rudash
  module Flip
    def flip(a_proc)
      raise 'Expected a Proc/Method' if !Rudash::Utils.is_function?(a_proc)
      
      flipped_proc = -> (*args) {
        reveresed_args = args.reverse
        
        a_proc.(*reveresed_args)
      }
    end
  end
end
