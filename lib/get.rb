require 'reduce.rb'

module Get
    extend Reduce

    def get
        get_proc = -> (hash, path, *rest_args) {
            return nil if !path.is_a?(String) and !path.is_a?(Array)
            return nil if !hash.is_a?(Array) and !hash.is_a?(Hash)

            transform_path = -> (path) {
                normalized_path = path

                if normalized_path.is_a?(Array)
                  normalized_path = normalized_path.join('.') 
                end

                normalized_path = normalized_path.gsub /[\[\]]/, "."
                normalized_path = normalized_path.gsub /\.\./, "."
                splitted_hash = normalized_path.split('.')
            }

            splitted_hash = transform_path[path]

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
