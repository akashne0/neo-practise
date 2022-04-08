module WarmUp
  def push_ups
    puts "Phew, I need a break!"
  end
end
  
class Gym
  include WarmUp
  
  def preacher_curls
    "I'm building my biceps."
  end
end
  
class Dojorequire
  include WarmUp
  
  def tai_kyo_kyu
    "Look at my stance!"
  end
end
  
puts Gym.new.push_ups
puts Dojo.new.push_ups

#   module Perimeter
#     class Array
#       def initialize
#         @size = 400
#       end
#     end
#   end
  
#   our_array = Perimeter::Array.new
#   ruby_array = Array.new
  
#   p our_array.class
#   p ruby_array.class