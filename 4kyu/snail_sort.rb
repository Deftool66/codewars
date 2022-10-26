def snail_sort(array)
  new_array = []
  while array.length.positive? do
    new_array << array.shift
    (0...array.length).each  do |n|
      new_array << array[n].pop
    end
    new_array << (array.pop || []).reverse!
    n = array.length - 1
    while n >= 0
      new_array << array[n].shift
      n -= 1
    end
  end
  new_array.flatten
end

p snail_sort([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
