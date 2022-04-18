def numbers(number)
    return if number <= 0
    puts number
    numbers(number-1)
    
end

print "Please enter a number:"
num = gets.chomp.to_i
numbers(num)