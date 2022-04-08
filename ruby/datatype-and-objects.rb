# Accssing characters and sub string
string = %q(this is a single quoted string)
another_string = %Q|This is a double quoted string|
puts string.inspect
puts another_string.inspect
s = 'hello'
puts s[0]   # will display char in between "h"
p s[s.length-1]  # will display char in between "o"
p s[-1]      # will display char in between "o"
p s[-2]      # will display char in between "l"
p s[-s.length]   # will display char in between "h"
p s[s.length-2]  # will display char in between "l"

s[0] = ?H #to replace first char with capital H
puts s
s[-1] = ""  # will delete the last char "Hell"
s[-1] = "P!" #will add the P! at last HelP!
puts s      #display s

s = "hello"
puts s[1,4] # will display char in between "ello"
puts s[1..3]   # will display char in between "ell"
puts s[0..0]    # will display char in between "h"

s = "hello"
puts s[0,1] = "H" #to replace first char with capital H
puts s[s.length,0] = " world" #will add the world at last "Hello world"
puts s[5,0] = ","   #will add "," without deleting anything

rupee1 = "\u20B9"   #for rupee symbol for utf-8
puts rupee1          # prints rupee symbol   
puts rupee1.encoding    # <Encoding:UTF-8>
puts rupee1.bytesize

euro1 = "\u20AC" # for euro symbol
puts euro1


# Arrays
word = %w[this is a test]
puts word.inspect
open = %w| ( [ { < |
puts open.inspect
white = %W(\s \t \r \n)
puts white.inspect

empty = Array.new   # to create new nill array
nils = Array.new(3)     # will create ["nil", "nil", "nil"]
puts nils.inspect
zeros = Array.new(4,0)  # will create ["0", "0", "0", "0"]
puts zeros.inspect
copy = Array.new(nils)  # makes a new copy of existing array
puts copy.inspect

a = [0, 1, 4, 9, 16]
puts a[0]   # first element
puts a[a.size-1] #display last element
puts a[-a.size] #shows first element
a[0] = "zero"   # appends "zero" in the beginning
puts a.inspect 
a[-1] = 1..16   #appends "1..16" in the last
a[9] = 64  #append "64" on index 9 i.e ["zero", 1, 4, 9, 1..16, nil, nil, nil, nil, 64]

# create an array
a = ('a'..'e').to_a
puts a.inspect
a[0,2] = ['A','B'] #["A", "B", "c", "d", "e"]

#to add 2 arrays
a = [1, 2, 3] + [4, 5] #[1, 2, 3, 4, 5]
a = a + [[6,7,8]] #[1, 2, 3, 4, 5, [6,7,8]]


#Hashes
numbers = Hash.new  #creates new empty hash
numbers["one"] = 1
numbers["two"] = 2
numbers["three"] = 3
numbers[:four] = 4
puts numbers



# Ranges
character_range = 'a'..'c'
character_range.each {|character| print "[#{character}]"} 
#display [a][b][c]    
character_range.step(2) {|character| print "[#{character}]"} 
#display [a][c]
triples = "AAA".."ZZZ"
triples.include? "ABC"
 => true 
triples.include? "ABCD"
 => false 
triples.cover? "ABCD"
 => true 
triples.to_a.include? "ABCD"
 => false 
triples.to_a.include? "ABCD"
 => false 

#Symbols 
str = "string" #begin with a sym
sym = str.intern #convert to symbol
puts sym.to_s
puts str = sym.to_sym
puts str = sym.id2name


#object equality

<     less than
<=    less than or equal 
==    Equal
>=    Greater than or equal
>     Greater than
=~    used for pattern matching in regular expression
===   case equality (it is like case and when case)
<==>   this returns -1 when left is less than right
        returns 0 if two operands are equal
        returns 1 if left is greater than right


(1..10) === 5 #true as 5 is in the range 
/\d+/ === "123" #true as the string matches regular expression


# freezing object
s = "ice" #strings as mutable object (mutable means can be changed)
s.freeze  # makes the string immutable 
s.frozen?   # returns true 

