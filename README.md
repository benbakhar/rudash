# Rudash

The <a href="https://lodash.com">Lodash</a> popular JavaScript library exported as a Gem for Ruby developers.

## Installation
```
gem install rudash
```

### Philosophy of Rudash
Rudash was written by a JavaScript developer to help JavaScript developers integrate into the ruby world without knowing so much. Lodash JavaScript library is the most popular library ever with wide adoption and most of the JavaScripters use the utility functions in it almost all the time.

The main Philosophy of Rudash it to be aligned with Lodash API while using Proc (lambda) functions.

### Usage
```ruby
require 'rudash'

double = -> (value) { value * 2 }
R_.map[[1,2,3], double] # => [2,4,6]

isEven = -> (value) { value % 2 === 0 }
R_.filter[[1,2,3,4], isEven] # => [2,4]
```

# API

## `“Array” Methods`

### <a id="_compact-array"></a>`R_.compact[array]`

Creates an array with all falsey values removed. *nil* are falsey but [*false*, *0*, and *""*] values are truthy values in ruby.

#### Arguments
`array` *(Array)*: The array to compact.

#### Returns
*(Array)*: Returns the new array of filtered values.

#### Example
```ruby
R_.compact[[1, 0, nil, "islam"]] # => [1, 0, "islam"]
```
* * *

### <a id="_concat-array"></a>`R_.concat[array, values*]`

Creates a new array concatenating array with any additional arrays and/or values.

#### Arguments
`array` *(Array)*: The array to concatenate.

`values*` *(Any value)*: The values to concatenate.

#### Returns
*(Array)*: Returns the new concatenated array.

#### Example
```ruby
R_.concat[[1,2,3], [4]] # => [1, 2, 3, 4]
R_.concat[1, { a: 1 }] # => [1, { a: 1 }]
```
* * *
