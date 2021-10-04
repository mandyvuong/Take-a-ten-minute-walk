# Process Review

This is a voluntary session where I recorded myself doing TDD programming within 30 minutes. Feedback was provided who reviewed this session.

## Exercise - Take a ten minute walk

You are meeting a friend in New York City, where all roads are laid out in a perfect grid. You arrived ten minutes too early to the appointment, so you decided to take the opportunity to go for a short walk.
The city provides its tourists with a Walk Generating App on their phones -- every time you press the button it sends you an array of one-letter strings representing directions to walk. e.g. ['n', 's', 'w', 'e']

You always walk one block at a time in a direction and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).

## Acceptance Criteria

```
ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']) # => true
ten_minute_walk?(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']) # => false
ten_minute_walk?(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n']) # => false
ten_minute_walk?(['w', 's']) # => false
```

## Plan

ten_minute_walk(directions_to_walk)

| Input                                                 | Output | Description           |
| ----------------------------------------------------- | ------ | --------------------- |
| 'w', 's'                                              | false  | less than 10 minutes  |
| 'w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n'      | false  | more south than north |
| 'w', 'n', 'e', 'n', 'n', 'e', 'n', 'w', 's', 's'      | false  | more north than south |
| 'w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'      | false  | more west than east   |
| 'e', 's', 'w', 'n', 'n', 'w', 's', 'e', 'e', 'e'      | false  | more east than east   |
| 'w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'e' | false  | more than 10 minutes  |
| 'w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'      | true   |                       |

## Feedback

Positives: good level of explanation, good listing of input/ output as well as extended test cases. Good that you're consistent with committing on pass test

Rooms for improvement: start with easier/simpler test, some simpler cases that could have been used to make the test case clearer, refractor as you go along
