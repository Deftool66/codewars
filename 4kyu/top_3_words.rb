def top_3_words(text)
  # 1. text words in an array
  array = text.scan(/[\A[a-z]]*\'?[a-z]+/).group_by(&:downcase).map { |key, value| [key, value.size] }.sort { |a, b| b[1] <=> a[1] }
  array[0, 3].map { |word| word[0] }
end
