def array_reverse(array)
    reversed_array = Array.new
    start_array_index = -1
    end_array_index = array.length-1
 
    while end_array_index > start_array_index     
        reversed_array << array[end_array_index] 
        end_array_index -= 1
    end
    return reversed_array.inspect
end

names = ["akash", "singh", "sanket", "shubham"]

puts array_reverse(names)