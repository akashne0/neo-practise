# if statement
x = 2 
name = if x == 1 then "one"
        elsif x == 2 then "two"
        elsif x == 3 then "three"
        elsif x == 4 then "four"
        else               "many"
      end

puts name


y = 2
unless y == 0
    puts  "y is not 0"
else
    puts  "y is  0"
end



square = [1,2,3,4].collect {|number| number * number}
print square, "\n"
even = (1..10).select {|even_number| even_number % 2 == 0}
print even, "\n"
odd = (1..10).reject {|odd_number| odd_number % 2 == 0}
print odd, "\n"


# yield- this goes to the block when mentioned in the method
def sentences()
  puts "This is the first sentence in the method."
  yield
  puts "This is another sentence in the method. "
end

sentences(){puts "This is a sentence from the block."}


def name_of_people(name)
  yield(name)
  yield("sanket")
  yield(name)
  yield("tanzil")
end

name_of_people("akash"){|friend| puts "The name is #{friend}."}


1.upto(10) do |i|            # 10 rows
  1.upto(10) do |i|          # Each row has 10 columns
    print "#{i}"  
  end
  print " ==> Row#{i}\n"     # try to print row number, but get column number
end

# break 
print "enter a line: "
while(line = gets.chomp)
  break if line == "quit"
  puts eval(line)
end
puts "good bye"
