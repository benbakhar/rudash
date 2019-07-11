module IsNil
    def is_nil
        self.isNil
    end

    def isNil
        isNilProc = -> (object) { object.nil? }
    end
end
