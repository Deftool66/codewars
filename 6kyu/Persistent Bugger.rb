# DESCRIPTION:
# Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
def persistence(n)
    #takes in a positive parameter num and returns its multiplicative persistence
  array = n.digits
  count  = 0
  while array.length > 1
    array = array.inject(:*).digits
    count += 1
  end
   count
end
