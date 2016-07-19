def longest_substring_without_repeated_chars(string)
  appearance = {}
  substring = []
  strings = []
  i = 0

  while i < string.length do
    char = string[i]
    if appearance.key?(char)
      i = appearance[char] + 1
      appearance = {}
      substring = [string[i]]
    else
      substring << char
      appearance[char] = i
      strings << substring.join
    end
    i += 1
  end

  p strings
end

p longest_substring_without_repeated_chars('abcabcdebb')

p longest_substring_without_repeated_chars('abacdefg')

p longest_substring_without_repeated_chars('bbbbb')
