module IsString
    def is_string?
        is_string_proc = -> (object) {
            case object
                when String
                    true
                else
                    false
            end
        }
    end
end
