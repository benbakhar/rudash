require 'some.rb'

module Includes
    extend Some
    def includes
        includesProc = -> (array, filter) {
            self.some[array, filter]
        }
    end
end
