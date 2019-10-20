module Rudash
  module Pick
    def pick(hash, paths)
      return self.pick(hash, [paths]) if !paths.is_a?(Array)
      return {} if !hash.is_a?(Hash)
      
      picked_hash = {}
      
      eacher = -> (path) {
        value = self.get(hash, path)
        if !value.nil?
          self.set(picked_hash, path, value)
        end
      }
      
      self.each(paths, eacher)
      picked_hash
    end
  end
end
