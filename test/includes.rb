require 'rudash'

isEven = -> (value) { value % 2 === 0 }

result = Rudash.includes[[1,2,3,4], isEven]

p result

result2 = Rudash.includes[[1,3,5,7], isEven]

p result2

result3 = Rudash.includes[[1,3,5,7], nil]

p result3

persons = [
    { name: 'islam', sex: 'male' },
    { name: 'sabel', sex: 'female' },
    { name: 'ruth', sex: 'female' }
]

result4 = Rudash.includes[persons, { sex: 'male' }]

p result4
