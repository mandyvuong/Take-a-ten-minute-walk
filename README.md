# Take a ten minute walk

Create a function that will return true if the walk will take you exactly ten minutes and will return you to your starting point.

input
['n', 's', 'w', 'e']
no empty array
valid array

ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']) # => true
ten_minute_walk?(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']) # => false
ten_minute_walk?(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n']) # => false
ten_minute_walk?(['w', 's']) # => false

ten_minute_walk(directions_to_walk)

| input                                                 | output | description           |
| ----------------------------------------------------- | ------ | --------------------- |
| 'w', 's'                                              | false  | less than 10 minutes  |
| 'w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n'      | false  | more south than north |
| 'w', 'n', 'e', 'n', 'n', 'e', 'n', 'w', 's', 's'      | false  | more north than south |
| 'w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'      | false  | more west than east   |
| 'e', 's', 'w', 'n', 'n', 'w', 's', 'e', 'e', 'e'      | false  | more east than east   |
| 'w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'e' | false  | more than 10 minutes  |
| 'w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'      | true   |                       |
