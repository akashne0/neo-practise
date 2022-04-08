# lucky_nums = [4, 8, 15, 16, 23, 42]

# begin 
#     num = 10/0 
#     lucky_nums["num"]
# rescue ZeroDivisionError
#     puts "Not divisible by zero"
# rescue TypeError => e
#     puts e
# end



# number = 10
# array = [0, 5, 4, 0, 5, 10]
# new_array = Array.new
 
# array.each do |num|
#     begin
#         # raise "The number cannot be divided by zero"
#         number / num 
#         new_array << num
#         rescue ZeroDivisionError
#          puts   "number cannot be divided by zero"
#         next
#     end
# end

# puts new_array



# Ruby program to create the user
# defined exception and handling it

### defining a method
def raise_and_rescue	
    begin
            
        puts 'This is Before Exception Arise!'
            
        # using raise to create an exception
        raise 'Exception Created!'
    
        puts 'After Exception'
    
    # using Rescue method
    rescue	
        puts 'Finally Saved!'	
    
    end	
    
    puts 'Outside from Begin Block!'	
    
end	
    
    # calling method
    raise_and_rescue
    

### The statements used in Exceptions are:
1. retry Statement: This statement is used to execute the rescue block 
        #again from the beginning after capturing the exception.

#Example
# use of retry statement
    begin   
        # using raise to create an exception
        raise 'Exception Created!'
        puts 'After Exception'
    # using Rescue method
    rescue	
        puts 'Finally Saved!'
    # using retry statement
    retry
    end	

2. raise Statement: This statement is used to raise an exception.
    This syntax is used to re-raise the current exception. 
    It is generally used by the exception handler where an exception is interrupted before passing it on.

    ##raise "Error Message"
    This syntax is used to create a RuntimeError exception and it raises up the call stack.
    
   ## raise ExceptionType, "Error Message"
    In this syntax, the first argument is used to create an exception and then set the message in the second argument.
    
    ## raise ExceptionType, "Error Message" condition
    In this syntax, the first argument is used to create an exception and then set the message in the second argument.
    You can also set a condition statement to raise an exception.

##Example:
# Ruby program to illustrate
# use of raise statement

begin
		
	puts 'This is Before Exception Arise!'
		
	# using raise to create an exception
	raise 'Exception Created!'

	puts 'After Exception'
end
