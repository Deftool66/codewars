def are_the_the_same?(array1, array2)
  array1.nil? || array2.nil? ? false : array1.map! { |num| num * num }.sort == array2.sort
end
