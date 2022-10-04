def is_valid_walk(walk)
  #your code here
  walk.count('n') == walk.count('s') && walk.count('w') == walk.count('e') && walk.count == 10
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])
