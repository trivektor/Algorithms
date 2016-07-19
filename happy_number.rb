def happy_number(num)
  digits = num.to_s.split('')

  if digits.length == 1 && digits != [1]
    return false
  end

  sum_of_square = digits.inject(0) { |memo, d| memo += d.to_i ** 2; memo }

  return true if sum_of_square == 1

  happy_number(sum_of_square)
end

p happy_number(19)

p happy_number(65)
