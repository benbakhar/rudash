require 'rudash'

double = -> (value) { value * 2 }

result = Rudash.map[[1,2,3], double]

p result
