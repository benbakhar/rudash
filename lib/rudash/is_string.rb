module IsString
    def is_string?(object)
        case object
            when String
                true
            else
                false
        end
    end
end
