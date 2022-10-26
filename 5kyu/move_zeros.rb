def moveZeros(arr)
  arr.reject { |num| num.is_a?(Numeric) && num.to_f.zero? } + arr.select { |num| num.is_a?(Numeric) && num.to_f.zero? }
end
