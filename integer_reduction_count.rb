def integer_reduction_count(s)
  n = s.to_i(2)
  count = 0

  while n > 0 do
    if n % 2 === 0
      n = n / 2
    else
      n = n - 1
    end

    count += 1
  end

  count
end

puts integer_reduction_count('011100')
puts integer_reduction_count('111')
puts integer_reduction_count('1111010101111')
puts integer_reduction_count('1' * 400000)