module Flip
    def flip
        flip_proc = -> (a_proc) {
            flipped_proc = -> (*args) {
                reveresed_args = args.reverse

                a_proc[*reveresed_args]
            }
        }
    end
end
