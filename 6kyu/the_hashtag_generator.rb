def generateHashtag(str)
  # ...
  array = str.split(" ")
  array.reject!{ |sub| sub == " " }
  if array.size == 0 || array.join.size > 139
    false
  else
    array.map!(& :capitalize)
    "##{array.join}"
  end
end
