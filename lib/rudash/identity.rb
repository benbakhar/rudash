module Identity
    def identity
        identity_proc = -> (first_arg, *rest_args) { first_arg }
    end
end
