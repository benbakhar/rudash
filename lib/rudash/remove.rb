module Rudash
  module Remove
    def remove(array, *rest_args)
      predicate_fn = self.head(rest_args)
      return [] if !array.is_a?(Array)
      removed_items = self.filter(array, predicate_fn)
      
      array.replace(array - removed_items)
      removed_items
    end
  end
end
