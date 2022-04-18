# string = "min12$%^&*()_-+=checkk"
# Output data: "kkceh$%^&*()_-+=c21nim"

given_string = "min12$%^&*()_-+=checkk"

start_str_index = 0
end_str_index = given_string.length - 1

while true
    if given_string[start_str_index].match(/\A[a-zA-Z0-9]*\z/)
        temp = given_string[start_str_index] 
        given_string[start_str_index] = given_string[end_str_index]
        given_string[end_str_index] = temp
    end
    
    if end_str_index < start_str_index
        break
    end
    
    start_str_index += 1
    end_str_index -= 1 

end

puts given_string


