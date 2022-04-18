# def reverse_string(string)

#   reversed_string = String.new
#   start_string = 0
#   end_string = string.length

#   while start_string < end_string
#     reversed_string = string[start_string] + reversed_string
#     start_string += 1
#   end

#   reversed_string
# end

# name = "akash"

# puts reverse_string(name)

def reverse_string(string)

  reversed_string = String.new
  start_string = -1
  end_string = string.length-1

  while end_string > start_string
    reversed_string << string[end_string]
    end_string -= 1
  end

  reversed_string.inspect
end

name = "akash"

puts reverse_string(name)