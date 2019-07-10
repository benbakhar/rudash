$LOAD_PATH << '.'
require 'map.rb'
require 'isNil.rb'
require 'filter.rb'
require 'some.rb'
require 'every.rb'
require 'find.rb'
require 'concat.rb'
require 'findLast.rb'
require 'includes.rb'
require 'reduce.rb'
require 'reduceRight.rb'
require 'reject.rb'
require 'compact.rb'

class Rudash
    extend Map
    extend IsNil
    extend Filter
    extend Some
    extend Every
    extend Find
    extend Concat
    extend FindLast
    extend Includes
    extend Reduce
    extend ReduceRight
    extend Reject
    extend Compact
end
