def max_sequence(arr)
  # your code here
  sub_array_indexes = (0...arr.length).flat_map { |i| (i...arr.length).map { |j| i..j } }
  current_sum = 0
  max_index = 0..0
  sub_array_indexes.each do |sub_index|
    current_sum = arr[sub_index].inject(:+)
    max_index = current_sum > arr[max_index].inject(:+) ? sub_index : max_index
  end
  arr[max_index].inject(:+)
  # for num in arr
  #   current_sum = (0 , (current_sum + num)).max
  #   max_sum = max(max_sum, current_sum).max
  # end
  # max_sum
end

p max_sequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
