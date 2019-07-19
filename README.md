# Rudash

The <a href="https://lodash.com">Lodash</a> popular JavaScript library exported as a Gem for Ruby developers.

## Installation
```
gem install rudash
```

### Philosophy of Rudash
Rudash was written by a JavaScript developer to help JavaScript developers integrate into the ruby world without knowing so much. Lodash JavaScript library is the most popular library ever with wide adoption and most of the JavaScripters use the utility functions in it almost all the time.

### Developers Contribution 
Run All Tests:
```
ruby ./test-runner.rb
```

Run Specific Test:
```
ruby ./test/reduce.rb
```

### Usage
```ruby
require 'rudash'

double = -> (value) { value * 2 }
array = [1,2,3]
R_.map[array, double] # => [2,4,6]

is_even = -> (value) { value % 2 === 0 }
array = [1,2,3,4]
R_.filter[array, is_even] # => [2,4]
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

#### Aliases
R_.first

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

### <a id="_uniq"></a>`R_.uniq[array]`

Creates a duplicate-free version of an array.

#### Arguments
`array` *(Array)*: The array to inspect.

#### Returns
*(Array)*: Returns the new duplicate free array.

#### Example
```ruby
array = [1,2, 2, 3, 3, 3]
R_.uniq[array] # => [1,2,3]
```
* * *

### <a id="_difference"></a>`R_.difference[array, *[values]]`

Creates an array of array values not included in the other given arrays. The order and references of result values are determined by the first array

#### Arguments
`array` *(Array)*: The array to inspect.

`values` *(...Array)*: The values to exclude.

#### Returns
*(Array)*: Returns the new array of filtered values.

#### Example
```ruby
arr1 = [1, 2, 3]
arr2 = [2]
arr3 = [3]

R_.difference[arr1, arr2] # => [1, 3]
R_.difference[arr1, arr2, arr3] # => [1]
```
* * *

## `“Collection” Methods`

### <a id="_each"></a>`R_.each[collection, iteratee_proc = R_.identity]`

Iterates over elements of collection and invokes iteratee for each element. The iteratee is invoked with two arguments: (value, index|key).

#### Aliases
R_.for_each

#### Arguments
`collection` *(Array|Hash)*: The collection to iterate over.

`iteratee_proc` *(Proc)*: The proc function invoked per iteration.

#### Returns
*(\*)*: Returns collection.

#### Example
```ruby

# Hash
hash = {a: 1, b: 2}
sum = 0
eacher = -> (value) { sum += value }
R_.each[hash, eacher]
sum # => 3

# Array
array = [1,2,3]
new_array = []
eacher = -> (value) { new_array << value }
R_.each[array, eacher]
new_array # => [1,2,3]
```
* * *

### <a id="_each_right"></a>`R_.each_right[collection, iteratee_proc = R_.identity]`

This method is like R_.each except that it iterates over elements of collection from right to left.

#### Aliases
R_.for_each_right

#### Arguments
`collection` *(Array|Hash)*: The collection to iterate over.

`iteratee_proc` *(Proc)*: The proc function invoked per iteration.

#### Returns
*(\*)*: Returns collection.

#### Example
```ruby

# Hash
hash = {a: 1, b: 2}
sum = 0
eacher = -> (value) { sum += value }
R_.each_right[hash, eacher]
sum # => 3

# Array
array = [1,2,3]
new_array = []
eacher = -> (value) { new_array << value }
R_.each_right[array, eacher]
new_array # => [3,2,1]
```
* * *


### <a id="_every"></a>`R_.every?[array, predicate_proc]`

Checks if predicate returns truthy for all elements of array.

#### Arguments
`array` *(Array)*: The collection to iterate over.

`predicate_proc` *(Proc)*: The proc function invoked per iteration.

#### Returns
*(boolean)*: Returns true if all elements pass the predicate check, else false.

#### Example
```ruby
is_even = -> (value) { value % 2 === 0 }
R_.every?[[1,2,3,4], is_even] # => false

persons = [
    { name: 'islam', sex: 'male' },
    { name: 'sabel', sex: 'female' },
    { name: 'sonia', sex: 'female' }
]
        
R_.every?[persons, { sex: 'male' }] # => false
```
* * *

### <a id="_filter"></a>`R_.filter[collection, predicate_proc = R_.identity]`

Iterates over elements of collection, returning an array of all elements predicate returns truthy for. The predicate is invoked with two arguments: [value, index|key]

#### Arguments
`collection` *(Array|Hash)*: The collection to iterate over.

`predicate_proc` *(Proc)*: The function invoked per iteration.

#### Returns
*(Array)*: Returns the new filtered array.

#### Example
```ruby
# Filtering array
is_even = -> (value) { value % 2 === 0 }
R_.filter[[1,2,3,4], is_even] # => [2,4]

# Filtering array of hashes
persons = [
    { name: 'islam', sex: 'male' },
    { name: 'sabel', sex: 'female' },
    { name: 'sonia', sex: 'female' }
]

R_.filter[persons, { sex: 'female' }]
# => [{ name: 'sabel', sex: 'female' }, { name: 'sonia', sex: 'female' }]

# Filtering hash
is_even = -> (v, k) { v % 2 === 0 }
R_.filter[{ a: 1, b: 2, c: 3, d: 4 }, is_even] # => { b: 2, d: 4 }
```
* * *

### <a id="_map"></a>`R_.map[collection, iteratee_proc = R_.identity]`

Creates an array of values by running each element in collection thru iteratee. The iteratee is invoked with two arguments:
[value, index|key].

#### Arguments
`collection` *(Array|Hash)*: The collection to iterate over.

`iteratee_proc` *(Proc)*: The function invoked per iteration.

#### Returns
*(Array)*: Returns the new mapped array.

#### Example
```ruby

# Map for values
double = -> (value) { value * 2 }
R_.map[[1,2,3], double] # => [2,4,6]

# Map for values and indexes
double_even_index = -> (value, index) {
    index % 2 === 0 ? value * 2 : value
}

R_.map[[1,2,3,4,5,6,7,8,9], double_even_index] # => [2,2,6,4,10,6,14,8,18]

# Mapping Hashes
inc_by_one = -> (value) { value + 1 }
hash = { a: 1 }
R_.map[hash, inc_by_one] # => [2]

# Mapping Strings
add_e_to_even_indexes = -> (value, index) {
    index % 2 === 0 ? value + 'e' : value
}

R_.map['islam', add_e_to_even_indexes] # => ["ie", "s", "le", "a", "me"]
```
* * *

### <a id="_find"></a>`R_.find[collection, iteratee_proc = R_.identity]`

Iterates over elements of collection, returning the first element predicate returns truthy for. The predicate is invoked with two arguments: (value, index|key).

#### Arguments
`collection` *(Array|Hash)*: The collection to inspect.

`iteratee_proc` *(Proc)*: The function invoked per iteration.

#### Returns
*(\*)*: Returns the matched element, else nil.

#### Example
```ruby

is_even = -> (value) { value % 2 === 0 }
R_.find[[1,2,3,4], is_even] # => 2

persons = [
    { name: 'islam', sex: 'male' },
    { name: 'sabel', sex: 'female' },
    { name: 'sonia', sex: 'female' }
]

R_.find[persons, { sex: 'female' }] # => { name: 'sabel', sex: 'female' }
```
* * *

### <a id="_find_last"></a>`R_.find_last[collection, iteratee_proc = R_.identity]`

This method is like R_.find except that it iterates over elements of collection from right to left.

#### Arguments
`collection` *(Array|Hash)*: The collection to inspect.

`iteratee_proc` *(Proc)*: The function invoked per iteration.

#### Returns
*(\*)*: Returns the matched element, else nil.

#### Example
```ruby

is_even = -> (value) { value % 2 === 0 }
R_.find_last[[1,2,3,4], is_even] # => 4

persons = [
    { name: 'islam', sex: 'male' },
    { name: 'sabel', sex: 'female' },
    { name: 'sonia', sex: 'female' }
]

R_.find_last[persons, { sex: 'female' }] # => { name: 'sonia', sex: 'female' }
```
* * *

### <a id="_reduce"></a>`R_.reduce[collection, iteratee_proc = R_.identity, accumulator*]`

Reduces collection to a value which is the accumulated result of running each element in collection thru iteratee, where each successive invocation is supplied the return value of the previous. If accumulator is not given, the first element of collection is used as the initial value. The iteratee is invoked with four arguments:
(accumulator, value, index|key).

#### Arguments
`collection` *(Array|Hash)*: The collection to iterate over.

`iteratee_proc` *(Proc)*: The function invoked per iteration.

`accumulator` *(Any)*: The initial value.

#### Returns
*(\*)*: Returns the accumulated value.

#### Example
```ruby

# Array reducer
sumer = -> (acc, current) {
    acc + current
}

R_.reduce[[1, 2, 3, 4, 5], sumer] # => 15

# Hash reducer
hash = { a: 1, b: 2 }
hash_sumer = -> (acc, current) { acc + current }
R_.reduce[hash, hash_sumer, 0] # => 3

# String reducer
joiner = -> (acc, current) {
    acc + ',' + current
}

R_.reduce['islam', joiner] # => 'i,s,l,a,m'

```
* * *

### <a id="_reduce_right"></a>`R_.reduce_right[collection, iteratee_proc = R_.identity, accumulator*]`

This method is like _.reduce except that it iterates over elements of collection from right to left.

#### Arguments
`collection` *(Array|Hash)*: The collection to iterate over.

`iteratee_proc` *(Proc)*: The function invoked per iteration.

`accumulator` *(Any)*: The initial value.

#### Returns
*(\*)*: Returns the accumulated value.

#### Example
```ruby

sumer = -> (acc, current) {
    acc + current
}

R_.reduce_right[[1, 2, 3, 4, 5], sumer] # => 15

hash = { a: 1, b: 2 }
hash_sumer = -> (acc, current) { acc + current }
R_.reduce_right[hash, hash_sumer, 0] # => 3
```
* * *

### <a id="_some"></a>`R_.some?[collection, predicate_proc = R_.identity]`

Checks if predicate returns truthy for any element of collection. Iteration is stopped once predicate returns truthy. The predicate is invoked with two arguments: (value, index|key).

#### Arguments
`collection` *(Array|Hash)*: The collection to iterate over.

`predicate_proc` *(Proc)*: The function invoked per iteration.

#### Returns
*(Boolean)*: Returns true if any element passes the predicate check, else false.

#### Example
```ruby

is_even = -> (value) { value % 2 === 0 }
R_.some?[[1,2,3,4], is_even] # => true

persons = [
    { name: 'islam', sex: 'male' },
    { name: 'sabel', sex: 'female' },
    { name: 'sonia', sex: 'female' }
]

R_.some?[persons, { sex: 'male' }] # => true

```
* * *

### <a id="_size"></a>`R_.size[collection]`

Gets the size of collection by returning its length for array-like values or the number of own enumerable string keyed properties for objects.

#### Arguments
`collection` *(Array|Hash|string)*: The collection to inspect.

#### Returns
*(Number)*: Returns the collection size.

#### Example
```ruby

R_.size[[1,2,3]] # => 3
R_.size[{a: 1, b: 2}] # => 2
R_.size["pebbles"] # => 7
```
* * *

### <a id="_reverse"></a>`R_.reverse[collection]`

Reverses array and/or string so that the first element becomes the last, the second element becomes the second to last, and so on.

#### Arguments
`collection` *(Array|string)*: The collection to modify.

#### Returns
*(Array|string)*: Returns the reversed collection.

#### Example
```ruby

R_.reverse[[1,2,3]] # => [3,2,1]
R_.reverse['islam'] # => 'malsi'
```
* * *

## `“Function” Methods`

### <a id="_flip"></a>`R_.flip[a_proc]`

Creates a proc that invokes the passed proc with arguments reversed.

#### Arguments
`a_proc` *(Proc)*: The proc to flip arguments for.

#### Returns
*(Proc)*: Returns the new flipped proc.

#### Example
```ruby
subtract = -> (a, b) { a - b }
subtract[2, 1] # => 1

flipped_subtract = R_.flip[subtract]
flipped_subtract[2, 1] # => -1
```
* * *

### <a id="_curry"></a>`R_.curry[a_proc]`

Creates a proc that accepts arguments of proc and either invokes proc returning its result, if at least arity number of arguments have been provided, or returns a proc that accepts the remaining func arguments, and so on.

#### Arguments
`a_proc` *(Proc)*: The proc to curry.

#### Returns
*(Proc)*: Returns the new curried proc.

#### Example
```ruby
inc = -> (a, b) { a + b }
incByOne = R_.curry[inc][1]
incByOne[3] # => 4
```
* * *


## `“Hash” Methods`

### <a id="_get"></a>`R_.get[hash, path]`

Gets the value at path of hash.

#### Arguments
`hash` *(Hash)*: The hash to query.

`path` *(String)*: The path of the property to get.

#### Returns
*(\*)*: Returns the resolved value.

#### Example
```ruby

# Simple hash
hash = { a: 1, b: 2 }
R_.get[hash, 'a'] # => 1
R_.get[hash, 'b'] # => 2

# Complex hash with arrays
hash = { a: { b: { c: [{ a: 1 }] } } }
R_.get[hash, 'a.b.c.0.a'] # => 1

# You can use also array [] notations
R_.get[hash, 'a.b.c[0].a'] # => 1

# You can use Array paths
array_path = ['a', 'b', 'c', '0', 'a']
R_.get[hash, array_path] # => 1

# Not found case
hash = { a: 1, b: 2 }
R_.get[hash, 'a.b.c.xvx.a'] # => nil
```
* * *

### <a id="_at"></a>`R_.at[hash, paths]`

Creates an array of values corresponding to paths of hash.

#### Arguments
`hash` *(Hash)*: The hash to query.

`paths` *(Array of String)*: The paths of the properties to get.

#### Returns
*(\*)*: Returns the resolved value.

#### Example
```ruby

# Simple hash
hash = { a: 1, b: 2 }
R_.at[hash, ['a', 'b']] # => [1,2]

hash = { 'a' => 1, 'b' => 2 }
R_.at[hash, ['a', 'b']] # => [1,2]

hash = { a: { b: { c: 3 } } }
R_.at[hash, ['a.b', 'a.b.c']] # => [{ c: 3 }, 3]
```
* * *


### <a id="_keys"></a>`R_.keys[hash]`

Gets the keys of hash.

#### Arguments
`hash` *(Hash)*: The hash to query.

#### Returns
*(Array)*: Returns the array of keys.

#### Example
```ruby
hash = {a: 1, b: 2}
R_.keys[hash] # => ['a', 'b']
```

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

## “Lang” Methods

### <a id="_is_nil"></a>`R_.is_nil?[value]`

Checks if value is nil.

#### Arguments
`value` *(\*)*: Any value.

#### Returns
*(Boolean)*: Returns true if value is nilish, else false.

#### Example
```ruby
R_.is_nil?[nil] # => true

R_.is_nil?[0] # => false
```
* * *

### <a id="_is_string"></a>`R_.is_string?[value]`

Checks if value is string.

#### Arguments
`value` *(\*)*: Any value.

#### Returns
*(Boolean)*: Returns true if value is string, else false.

#### Example
```ruby
R_.is_string?[nil] # => false

R_.is_string?['str'] # => true
```
* * *


### <a id="_is_array"></a>`R_.is_array?[value]`

Checks if value is classified as an Array object.

#### Arguments
`value` *(\*)*: The value to check.

#### Returns
*(Boolean)*: Returns true if value is an array, else false.

#### Example
```ruby
R_.is_array?[[1,2,3]] # => true

R_.is_array?[{ a: 1 }] # => false
```
* * *

### <a id="_is_hash"></a>`R_.is_hash?[value]`

Checks if value is classified as an Hash object.

#### Arguments
`value` *(\*)*: The value to check.

#### Returns
*(Boolean)*: Returns true if value is a hash, else false.

#### Example
```ruby
R_.is_hash?[[1,2,3]] # => false

R_.is_hash?[{ a: 1 }] # => true
```
* * *

### <a id="_is_number"></a>`R_.is_number?[value]`

Checks if value is classified as an Numeric object.

#### Arguments
`value` *(\*)*: The value to check.

#### Returns
*(Boolean)*: Returns true if value is a number, else false.

#### Example
```ruby
R_.is_number?[56] # => true

R_.is_number?[{ a: 1 }] # => false
```
* * *

### <a id="_is_empty"></a>`R_.is_empty?[value]`

Checks if value is an empty collection.

#### Arguments
`value` *(\*)*: The value to check.

#### Returns
*(Boolean)*: Returns true if value is empty, else false.

#### Example
```ruby
R_.is_empty?[[1,2,3]] # => false

R_.is_empty?[{ a: 1 }] # => false

R_.is_empty?[[]] # => true

R_.is_empty?[{}] # => true
```
* * *

### <a id="_is_proc"></a>`R_.is_proc?[value]`

Checks if value is a Proc.

#### Arguments
`value` *(\*)*: The value to check.

#### Returns
*(Boolean)*: Returns true if value is a Proc, else false.

#### Example
```ruby
R_.is_proc?[{}] # =>  false

is_even = -> (value) { value % 2 === 0 }
R_.is_proc?[is_even] # => true
```
* * *

### <a id="_is_equal"></a>`R_.is_equal?[value, other]`

Performs a deep comparison between two values to determine if they are equivalent.

#### Arguments
`value` *(\*)*: The value to compare.

`other` *(\*)*: The other value to compare.

#### Returns
*(Boolean)*: Returns true if the values are equivalent, else false.

#### Example
```ruby
hash1 = { a: { b: 2 } }
hash2 = { a: { b: 2 } }

R_.is_equal?[hash1, hash2] # => true
```
* * *

### <a id="_is_eq"></a>`R_.eq?[value, other]`

Performs a reference comparison between two values to determine if they are equivalent.

#### Arguments
`value` *(\*)*: The value to compare.

`other` *(\*)*: The other value to compare.

#### Returns
*(Boolean)*: Returns true if the values are equivalent, else false.

#### Example
```ruby
hash1 = { a: 1 }
hash2 = { a: 1 }

R_.eq?[hash1, hash2] # => false
R_.eq?[hash1, hash1] # => false
```
* * *
