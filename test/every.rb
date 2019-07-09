require 'rudash'

isEven = -> (value) { value % 2 === 0 }

result = Rudash.every[[1,2,3,4], isEven]

p result

result2 = Rudash.every[[2,4,6,8], isEven]

p result2

result3 = Rudash.every[[1,3,5,7], nil]

p result3

persons = [
    { name: 'islam', sex: 'male' },
    { name: 'sabel', sex: 'female' },
    { name: 'ruth', sex: 'female' }
]

result4 = Rudash.every[persons, { sex: 'male' }]

p result4
