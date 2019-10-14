### Developers Contribution 
Run All Tests:
```
ruby ./test-runner.rb
```

Run Specific Test:
```
ruby ./test/reduce.rb
```

Some notes to be aware of:

- You must be aligned to the Lodash behavior as much as possible (I try the cases in the console of lodash website).

- You must write some cases in a unit test file that cover as much cases as possible.

- Important to note that you can use already existed implementation, which means that you can use R_.filter because it's already implemented. You can access Rudash functions by referring to `self` in your method.

- Please update the README from Lodash website while changing tiny things like: "Object" becomes "Hash", etc.

- Remember that all Rudash functions are aligned with Ruby community style guidelines, which means that "isNil" becomes "is_nil?", and "groupBy" will be "group_by".

- Perfect PR should look like this one: [#73](https://github.com/Attrash-Islam/rudash/pull/73) 

- Make sure to be aligned to the semantic versioning. In here, adding new functions will cause bumping the minor version, fixing some already implemented logic causes bumping the patch version.
