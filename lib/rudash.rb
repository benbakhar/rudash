$LOAD_PATH << '.'
require 'map.rb'
require 'is_nil.rb'
require 'filter.rb'
require 'some.rb'
require 'every.rb'
require 'find.rb'
require 'concat.rb'
require 'find_last.rb'
require 'reduce.rb'
require 'reduce_right.rb'
require 'compact.rb'
require 'head.rb'
require 'last.rb'
require 'tail.rb'
require 'size.rb'
require 'flip.rb'
require 'identity.rb'
require 'get.rb'
require 'is_array.rb'
require 'is_equal.rb'
require 'is_hash.rb'
require 'is_empty.rb'
require 'is_proc.rb'

class R_
    extend Map
    extend IsNil
    extend Filter
    extend Some
    extend Every
    extend Find
    extend Concat
    extend FindLast
    extend Reduce
    extend ReduceRight
    extend Compact
    extend Head
    extend Last
    extend Tail
    extend Size
    extend Flip
    extend Identity
    extend Get
    extend IsArray
    extend IsEqual
    extend IsHash
    extend IsEmpty
    extend IsProc
end
