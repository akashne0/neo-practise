=begin
Parse this list into a two dimensional array where the inner array has a number and name. 

doctor_map = "One: William Hartnell
Two:Patrick Troughton
Three: Jon Pertwee
Four: Tom Baker (longest run)
5: Peter Davison
six: Colin Baker
Seven:   Sylvester McCoy
Eight: Paul McGann
Nine: Christopher Eccleston *series reboot*
Ten: David Tennant <- personal fav
Eleven: Matthew Robert Smith - the current doctor"
doctors = doctor_map.scan(/___/)
assert_equal doctors[0][1], "William Hartnell"
assert_equal doctors[4][1], "Peter Davison"
assert_equal doctors[3][1], "Tom Baker"
assert_equal doctors[4][0], "5"
assert_equal doctors[7][0], "Eight"
assert_equal doctors[9][1], "David Tennant"
assert_equal doctors[10][1], "Matthew Robert Smith" 
=end


#creating an array with 10 rows and 2 column
patients_data = Array.new
count = 4

while count >= 1 do 
  # for data of patient
  print "Please enter patient number: "
  patient_number = gets.chomp.to_i

  print "Please enter patient name: "
  patient_name = gets.chomp.to_s 

  patients_data << [patient_number,patient_name.capitalize]

  count -= 1
end

puts puts

# puts patients_data.inspect
puts "Doctors = "
patients_data.map{|doctors_info| puts "#{doctors_info[0]}: #{doctors_info[1]}"}

# puts patients_data[2][1]

# doctors = doctor_map.scan(/a/)