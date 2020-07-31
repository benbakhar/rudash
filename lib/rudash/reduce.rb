module Rudash
  module Default
    def reduce(collection, *rest_args)
      reducer = rest_args[0]
      initial_state = rest_args[1]
      col = collection.is_a?(String) ? collection.split('') : collection

      return self.reduce(collection, -> { nil }) unless Rudash::Utils.function?(reducer)

      case rest_args.size
      when 1
        return col.reduce do |acc, current|
          if col.is_a?(Hash)
            Rudash::DynamicArgsCount.call(reducer, acc, current[1], current[0])
          else
            Rudash::DynamicArgsCount.call(reducer, acc, current)
          end
        end
      when 2
        return col.reduce(initial_state) do |acc, current|
          if col.is_a?(Hash)
            Rudash::DynamicArgsCount.call(reducer, acc, current[1], current[0])
          else
            Rudash::DynamicArgsCount.call(reducer, acc, current)
          end
        end
      else
        return nil
      end
    end
  end
end
