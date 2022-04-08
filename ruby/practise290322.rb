require 'pry'

list = [1,2,2,2,3,4,5,5,6,7,8,9,6,5,4,2]
binding.pry
# new_list = Hash.new
# list.each do |number|
#   if new_list.include? number
#     new_list[number] += 1
#   else
#     new_list[number] = 1
#   end
# end

# puts new_list


#  prime number program
# def prime_or_not(number)
#   prime_flag = true

#   (2..(number-1)).each do |n|
#     if number % n == 0
#       prime_flag = false
#     end
#   end

#   if prime_flag
#     puts "#{number} is a prime number."
#   else
#     puts "#{number} is not a prime number."
#   end
# end

# print "Please enter a number: "
# entered_number = gets.chomp.to_i

# prime_or_not(entered_number)



# reverse name
# name = "akash"
# (name.length - 1).downto(0) do |index|
#   print name[index]
# end

# sol- hsasa


# pattern
# number = 1
# (1..4).each do |outer_loop|
#   (1..outer_loop).each do |inner_loop|
#     print number
#       number+=1
#   end
#   print "\n"
# end

# sol-
# 1
# 23
# 456

# recursion program 
# def recursive(number)
#   if number == 1
#     return number
#   else
#     number * recursive(number-1)
#   end  
# end

# puts recursive(5)

# pallindrome
# name = "akash"
# reverse_name = String.new
# (name.length-1).downto(0) do |number|
#   reverse_name = reverse_name.concat(name[number])
# end

# puts reverse_name

# def plus_two(num)
#     num + 2
#     num
#     binding.pry
# end

# puts plus_two(2)

# steps
# 0.step(20,2) do |num| 
#   puts num
# end

# rails generate shopify_app:install -api_key=2238e751cd9234637f8fbec5b6d0eec7  
# -secret=50a082565b4aedacdce5616d730345a1 -redirect_uri= http://9d17-103-224-241-11.ngrok.io/auth/shopify/callback












