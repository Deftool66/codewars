def snail_sort(array)
  new_array = []
  while array.length.positive? do
    new_array << array.shift
    for  n in (0...array.length) do
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
