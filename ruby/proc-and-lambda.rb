# # proc have block like behavior and lambdas have method like behavior

# #creating proc from a block
# def makeproc(&p) #Convert associated block to proc and store in p
#     p      #Return the proc object 
# end

# adder = Proc.new{|x,y| x + y}
# puts sum = adder.call(2,2)


# # def iterator(&proc) 
# #     puts "entering iterator"
# #     proc.call
# #     puts "exiting iterator"
# # end

# # def test 
# #   iterator {puts "entering proc"; break}
# # end

# # test


# #lambda

# # def test 
# #   puts "entering test method"
# #   lambda = lambda {puts "entering lambda"; break; puts "exiting lambda"}
# #   lambda.call
# #   puts "exiting test method"
# # end
# # test


# class Car
#   # def initialize(speed, color)
#   #   @speed = speed
#   #   @color = color
#   #   puts "The speed of the car is #@speed"
#   #   puts "The color of the car is #@color"
#   # end
#   def initialize(speed, color)
#     @@speed = speed
#     @@color = color
#     puts "The speed of the car is #@@speed"
#     puts "The color of the car is #@@color"
#   end

# end

# # car_property = Car.new(100,"red")


# # # class Person
# # #   # @@name = "John"

# # #   # def introduce
# # #   #   print "My name is #@@name"
# # #   # end

# # #   @name = "John"
# # #   def initialize(name)
# # #     @name = name

# # #   end

# # #   def introduce
# # #     print "My name is #@name"   #instance variable dont have to be created in the initialize method bu thats how u give them initial value
# # #   end
# # # end

# # # person_name = Person.new("")


# # class Animal
# #   @@animal_color ="green"
# #   def initialize(color)
# #     @color = color
# #   end

# #   def aligator
# #     puts "The color of an aligator is #@color"
# #   end

# # end

# # class Cat < Animal
  
# #   def cat
# #   puts "The color of my cat is #@color "
# #   end

# #   puts "The color of new born kittens are #@@animal_color."
# # end



# # color_cat = Cat.new("white")
# #   color_cat.cat


# # class A
# #   @@value = 1
# #   def A.value; @@value; end
# # end 
# # print A.value
# # class B < A ; @@value = 2; end
# # print A.value
# # class C < A; @@value = 3; end 
# # print B.value


# # class A
# #   @@value = 1
# #   def A.value; @@value; end
# # end 
# # a = A.new
# #   puts a.value
# # class B < A ; @@value = 2; end
# # print A.value
# # class C < A; @@value = 3; end 
# # print B.value


# # class Animal
# #     def cat
# #       puts "meow meow"
# #     end
# #     def self.dog
# #       puts "bhow bhow"
# #       cat
# #     end
# end

# Animal.dog

class Animal
  @count = 0
  def self.count
    @count
  end
  def self.count=(n)
    @count = n
  end
  def initialize
    self.class.count += 1
  end

end

class Cat < Animal
  @count = 0
end

class Dog < Animal
  @count = 0
end

Animal.new
Animal.new
Animal.new
Cat.new
Cat.new
Cat.new
Dog.new
Dog.new

p "cat count is #{Cat.count}"
p "Dog count is #{Dog.count}"
p "Animal count is #{Animal.count}"

puts Cat.instance_methods.sort

