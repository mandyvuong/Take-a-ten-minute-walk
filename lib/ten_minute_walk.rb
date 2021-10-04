def ten_minute_walk(directions_to_walk)
  directions_to_walk.length == 10 && directions_to_walk.count('s') == directions_to_walk.count('n') && directions_to_walk.count('w') == directions_to_walk.count('e')
end