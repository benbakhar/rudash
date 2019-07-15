require 'reduce.rb'

module Get
    extend Reduce

    def get
        get_proc = -> (hash, path, *rest_args) {
            return nil if !path.is_a?(String)
            return nil if !hash.is_a?(Array) and !hash.is_a?(Hash)

            splitted_hash = path.split('.')

            get_reducer = -> (acc, current) {
                return nil if acc.nil?

                if acc.is_a?(Array) and current.match(/^(\d)+$/)
                    acc[current.to_i]
                elsif acc.is_a?(Array) and !current.match(/^(\d)+$/)
                    nil
                elsif acc.is_a?(Hash)
                    acc[current.to_sym]
                else
                    nil
                end
            }

            self.reduce[splitted_hash, get_reducer, hash]
        }
    end
end
