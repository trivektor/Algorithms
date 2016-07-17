def merge_sorted_arrays(a1, a2)
  result = []

  while !a1.empty? && !a2.empty?
    if a1[0] <= a2[0]
      result << a1.shift
    else
      result << a2.shift
    end

    if a1.empty?
      result += a2
    elsif a2.empty?
      result += a1
    end
  end

  result
end

a1 = [1,3,5,7,9]
a2 = [2,4,6,8,10]

p merge_sorted_arrays(a1, a2)

a1 = [1,1,3,3,5,7,9,9]
a2 = [2,4,6,6,8,10]

p merge_sorted_arrays(a1, a2)