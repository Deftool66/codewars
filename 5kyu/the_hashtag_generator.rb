def generate_hashtag(str)
  # ...
  array = str.split(' ')
  array.reject! { |sub| sub == ' ' }
  if array.size.zero? || array.join.size > 139
    false
  else
    array.map!(& :capitalize)
    "##{array.join}"
  end
end
