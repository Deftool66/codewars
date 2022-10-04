def find_even_index(arr)
  v = arr.each_index.select do |i|
    arr[0...i].inject(0, :+) == arr[i+1..].inject(0, :+)
  end
  v[0] ? v[0] : -1
end
