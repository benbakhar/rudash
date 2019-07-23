module Utils
    def self.match_number?(str)
        return false if !str.is_a?(String)
        str.match(/^(\d)+$/)
    end
end
