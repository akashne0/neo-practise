# def max_non_repeated(string)
#   max_string = string.
#     each_char.
#     map.with_index { |_, i| string[i..].split('') }.
#     map do |v|
#       ary = []
#       v.each { |l| ary << l if ary.size == ary.uniq.size }
#       ary.uniq.join
#     end.max
#     {
#     string: max_string,
#     length: max_string.length
#     }
# end
  
# # word = "pwwkew"
# # word = "bbbbb"
# word = "abcabcbb"


# puts max_non_repeated(word)[:string]
# puts max_non_repeated(word)[:length]

def lolswrc(str)
  map = {}
  i = 0
  start = 0
  str_chars = str.chars
  result = 0
  while i < str_chars.length
    if !map[str_chars[i]]
      map[str_chars[i]] = i
    else
      result = result > (i-start) ? result : (i-start) # current longest
      prev_pos = map[str_chars[i]] # where did we previously find the repeated character
      start = prev_pos + 1 # start after the repeated character
      map[str_chars[i]] = i # update the new position for the repeated character
    end
    i += 1
  end

  result = result > (i-start) ? result : (i-start) # need to check one more time because we dont check after last char, if we go into if block
  result
end

def lswrc(str)
  map = {}
  i = 0
  start = 0
  str_chars = str.chars
  result = 0
  while i < str_chars.length
    if !map[str_chars[i]]
      map[str_chars[i]] = i
    else
      if result < i-start
        result = i-start
        longest_subsequence = str[start..i-1]
      end
      prev_pos = map[str_chars[i]] # where did we previously find the repeated character
      start = prev_pos + 1 # start after the repeated character
      map[str_chars[i]] = i # update the new position for the repeated character
    end
    i += 1
  end

  if result < i-start
    result = i-start
    longest_subsequence = str[start..i-1]
  end
  longest_subsequence
end


  p lolswrc('abcabcbb')
  p lolswrc('bbbbb')
  p lolswrc('abcbde')
  p lolswrc('pwwkew')

  p lswrc('abcabcbb')
  p lswrc('bbbbb')
  p lswrc('abcbde')
  p lswrc('pwwkew')
