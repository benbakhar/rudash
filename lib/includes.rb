require 'some.rb'

module Includes
    extend Some
    def includes
        includes_proc = -> (array, filter) {
            self.some[array, filter]
        }
    end
end
