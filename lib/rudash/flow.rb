module Rudash
    module Flow
        def flow(*funs)
            flatten_funs = funs.flatten

            flow_proc = -> (*args) {
                self.reduce(flatten_funs, -> (acc, fn) {
                    Rudash::DynamicArgsCount.call(fn, *self.concat(acc))
                }, args)
            }
        end
    end
end
