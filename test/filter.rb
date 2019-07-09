require 'rudash'

isEven = -> (value) { value % 2 === 0 }

result = Rudash.filter[[1,2,3,4], isEven]

p result

persons = [
    { name: 'islam', sex: 'male' },
    { name: 'sabel', sex: 'female' },
    { name: 'ruth', sex: 'female' }
]

result2 = Rudash.filter[persons, { sex: 'female', name: 'sabel' }]

p result2

result3 = Rudash.filter[nil, nil]

p result3
