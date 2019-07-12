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
R_.compact[[1, 0, nil, "islam"]] // => [1, 0, "islam"]
```
* * *
