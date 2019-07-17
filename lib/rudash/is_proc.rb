module IsProc
    def is_proc?
        is_proc_proc = -> (value) { value.is_a?(Proc) }
    end
end
