# 1) while loop
# $i = 0
# $num = 5
#
#   while $i < $num do
#     puts "The number inside the loop is i = #$i"
#     $i += 1
#   end

# 2) when and while
  # print "Kindly enter the number :"
  # $number = gets.chomp.to_i
  #
  # case $number
  #   when $number < 18
  #     puts "you're just a kid"
  #   when $number >= 18
  #     puts "you're an adult"
  #   when $number >= 60
  #     puts "you're a senior citizen"
  # end

  # 3) for loop
    # number =0...12
    # for i in number
    #   print i , "\n"
    # end
    #
    # for i in 0..5
    #  if i > 2 then
    #     break
    #  end
    #  puts "Value of local variable is #{i}"
    # end
    #
    # for i in 0..5
    #  if i < 2 then
    #     next
    #  end
    #  puts "Value of local variable is #{i}"
    # end

  #
  #   print "Please enter a number :"
  #   number = gets.chomp.to_i
  #
  #   def check_sign(num)
  #     if num > 0
  #         puts "#{num} is positive"
  #     elsif num == 0
  #       puts "#{num} is zero"
  #     else
  #         puts "#{num} is negative"
  #     end
  #   end
  #
  # num = check_sign(number)

  # print "Please enter values:  "
  # array = Array.new(gets.chomp).to_i
  # array = [1, 2, 3, 5, 6]
  # for i in array
  #   puts i
  # end

  restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
  restaurant_menu.each do |item, price|
    puts "#{item}: $#{price}"
    puts restaurant_menu[item] = price + (price * 0.1)
  end
