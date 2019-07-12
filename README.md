# Rudash

## `“Array” Methods`

### <a id="_compact-array"></a>`_.compact(array)`

Creates an array with all falsey values removed. *nil* are falsey but [*false*, *0*, and *""*] values are truthy values in ruby.

#### Arguments
`array` *(Array)*: The array to compact.

#### Returns
*(Array)*: Returns the new array of filtered values.

#### Example
```ruby
R_.compact[[1, 0, nil, "islam"]] # [1, 0, "islam"]
```
* * *

### <a id="_concat-array"></a>`_.concat(array, values*)`

Creates a new array concatenating array with any additional arrays and/or values.

#### Arguments
`array` *(Array)*: The array to concatenate.
`values*` *(Any value)*: The values to concatenate.

#### Returns
*(Array)*: Returns the new concatenated array.

#### Example
```ruby
R_.concat[[1,2,3], [4]] # [1, 2, 3, 4]
R_.concat[1, { a: 1 }] # [1, { a: 1 }]
```
* * *
