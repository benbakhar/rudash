module Flip
    def flip
        flipProc = -> (function) {
            flippedFunction = -> (*args) {
                reveresedArgs = args.reverse

                function[*reveresedArgs]
            }
        }
    end
end
