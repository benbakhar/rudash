module IsNil
    def is_nil?
        is_nil_proc = -> (object, *rest_args) { object.nil? }
    end
end
