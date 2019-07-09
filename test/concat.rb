require 'rudash'

result = Rudash.concat[[1,2,3], [4]]

p result

result2 = Rudash.concat[1, { a: 1 }]

p result2

result3 = Rudash.concat[[1,2,3], nil]

p result3
