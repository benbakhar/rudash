$LOAD_PATH << '.'
require 'map.rb'
require 'isNil.rb'
require 'filter.rb'
require 'some.rb'
require 'every.rb'

class Rudash
    extend Map
    extend IsNil
    extend Filter
    extend Some
    extend Every
end
