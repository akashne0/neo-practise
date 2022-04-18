# string = "min12$%^&*()_-+=checkk"
# string = string.split('')

# array = "kkcehc21nim"
# special_char_hash = Hash.new
# array_without_special_char = Array.new

# 0.upto(string.length - 1).each do |index|
#     if string[index].match? (/[a-zA-Z0-9]+/)
#         array_without_special_char << string[index]
#         string[index] = nil
#     else
#         special_char_hash[index] = string[index]
#     end
# end



#     string.each_with_index do |char, index|
#         if char == nil
#             puts" #{char[index]} "
#             # string[index].prepend(array_without_special_char[index]) 
#         end
#     end
#     puts string.inspect

# puts special_char_hash.inspect
# array_without_special_char = array_without_special_char.reverse

# # puts array_without_special_char.inspect

#     # special_char_hash.each do |key, value|
#     #      array_without_special_char[key] = value
#     # end
#     final_reverse_array = Array.new

#     array_without_special_char.each_with_index do |char, index|
#         if special_char_hash.has_key? index
#             final_reverse_array[index] = special_char_hash[index]
#         end
#     end

#     array_without_special_char.each_with_index do |character, index|
#         unless final_reverse_array[index] != nil
#             final_reverse_array[index] =  character
#         end
#     end

#     puts final_reverse_array.inspect


