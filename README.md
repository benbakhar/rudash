# Rudash

The <a href="https://lodash.com">Lodash</a> popular JavaScript library exported as a Gem for Ruby developers.

## Installation
```
gem install rudash
```

### Philosophy of Rudash
Rudash was written by a JavaScript developer to help JavaScript developers integrate into the ruby world without knowing so much. Lodash JavaScript library is the most popular library ever with wide adoption and most of the JavaScripters use the utility functions in it almost all the time.

The main Philosophy of Rudash it to be aligned with Lodash API with it being nil-safe and type-safe while using Proc (lambda) functions.

### Usage
```ruby
require 'rudash'

double = -> (value) { value * 2 }
array = [1,2,3]
R_.map[array, double] # => [2,4,6]

isEven = -> (value) { value % 2 === 0 }
array = [1,2,3,4]
R_.filter[array, isEven] # => [2,4]
```

# API

## `“Array” Methods`

### <a id="_compact"></a>`R_.compact[array]`

Creates an array with all falsey values removed. *nil* are falsey but [*false*, *0*, and *""*] values are truthy values in ruby.

#### Arguments
`array` *(Array)*: The array to compact.

#### Returns
*(Array)*: Returns the new array of filtered values.

#### Example
```ruby
array = [1, 0, nil, "islam"]
R_.compact[array] # => [1, 0, "islam"]
```
* * *

### <a id="_concat"></a>`R_.concat[array, values*]`

Creates a new array concatenating array with any additional arrays and/or values.

#### Arguments
`array` *(Array)*: The array to concatenate.

`values*` *(\*)*: The values to concatenate.

#### Returns
*(Array)*: Returns the new concatenated array.

#### Example
```ruby
arr1 = [1,2,3]
arr2 = [4]
R_.concat[arr1, arr2] # => [1, 2, 3, 4]

R_.concat[1, { a: 1 }] # => [1, { a: 1 }]
```
* * *

### <a id="_head"></a>`R_.head[array]`

Gets the first element of array.

#### Arguments
`array` *(Array)*: The array to query.

#### Returns
*(\*)*: Returns the first element of array.

#### Example
```ruby
array = [1,2,3]
R_.head[array] # => 1

empty_array = []
R_.head[empty_array] # => nil
```
* * *

### <a id="_last"></a>`R_.last[array]`

Gets the last element of array.

#### Arguments
`array` *(Array)*: The array to query.

#### Returns
*(\*)*: Returns the last element of array.

#### Example
```ruby
array = [1,2,3]
R_.last[array] # => 3

empty_array = []
R_.last[empty_array] # => nil
```
* * *

### <a id="_tail"></a>`R_.tail[array]`

Gets all but the first element of array.

#### Arguments
`array` *(Array)*: The array to query.

#### Returns
*(Array)*: Returns the slice of array.

#### Example
```ruby
array = [1,2,3]
R_.tail[array] # => [2,3]

empty_array = []
R_.tail[empty_array] # => []
```
* * *

## `“Collection” Methods`

### <a id="_every"></a>`R_.every[array, predicate_proc]`

Checks if predicate returns truthy for all elements of array.

#### Arguments
`array` *(Array)*: The collection to iterate over.

`predicate_proc` *(proc)*: The proc function invoked per iteration.

#### Returns
*(boolean)*: Returns true if all elements pass the predicate check, else false.

#### Example
```ruby
isEven = -> (value) { value % 2 === 0 }
R_.every[[1,2,3,4], isEven] # => false

persons = [
    { name: 'islam', sex: 'male' },
    { name: 'sabel', sex: 'female' },
    { name: 'ruth', sex: 'female' }
]
        
R_.every[persons, { sex: 'male' }] # => false
```
* * *

## `“Util” Methods`

### <a id="_identity"></a>`R_.identity[value]`

This method returns the first argument it receives.

#### Arguments
`value` *(\*)*: Any value.

#### Returns
*(\*)*: Returns value.

#### Example
```ruby
R_.identity[0] # => 0

R_.identity[1, 2] # => 1
```
* * *
