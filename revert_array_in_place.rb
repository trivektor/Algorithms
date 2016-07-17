def revert_array_in_place(a)
  i = 0
  while i < a.length / 2 do
    temp = a[a.length - 1 - i]
    a[a.length - 1 - i] = a[i]
    a[i] = temp
    i += 1
  end
  a
end

a = (1..100).to_a

p revert_array_in_place(a)

a = (1..51).to_a

p revert_array_in_place(a)
