# SemanticSort
Sorts strings containing numbers in a semantic way.  
  
This gem was created to practice gem creation.  
We recommend the following mainstream gems that have the same functionality.  
- https://github.com/rwz/natural_sort
  
## Installation
`gem install semantic_sort`
  
## Usage
  
```
require 'semantic_sort'

puts ['1', '10', '02'].sort           # => ['02', '1', '10']
puts ['1', '10', '02'].semantic_sort   # => ['1', '02', '10']
```
  
## Sorting Method
- Start
    - ['003.txt', '02.txt', '1.txt']
- Append 0 to the left to match the maximum length of the number sequence
    - ['003.txt', '002.txt', '001.txt']
- Sort
    - ['001.txt', '002.txt', '003.txt']
- Delete unnecessary zeros
    - ['1.txt', '02.txt', '003.txt']
  
## Credit
Copyright (C) Coro365  
Licensed under the [MIT](LICENSE) license.  
