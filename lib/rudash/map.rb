require_relative 'head.rb'
require_relative 'identity.rb'

module Map
    extend Head
    extend Identity

    def map(collection, *rest_args)
        mapper_proc = self.head(rest_args) || self.method(:identity)

        col = collection.is_a?(String) ? collection.split('') : collection

        if col.is_a?(Array)
            begin
                return col.map.with_index { |value, index| mapper_proc[value, index] }
            rescue ArgumentError => e
                return col.map { |value| mapper_proc[value] }
            end
        elsif col.is_a?(Hash)
            begin
                return col.map { |k,v| mapper_proc[v, k] }
            rescue ArgumentError => e
                return col.map { |k,v| mapper_proc[v] }
            end
        else
            return []
        end
    end
end
