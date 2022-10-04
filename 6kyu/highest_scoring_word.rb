def high(x)
  # Code here
  words_array = x.split(' ')

  value_array = words_array.map{|word| value(word) }
  p words_array[value_array.index(value_array.max)]
end

def value(word)
  indexes = ('a'..'z').each_with_index.map{|l,i| [l, i + 1]}.to_h
  word.chars.map { |char| indexes[char] }.reduce(:+)
end
