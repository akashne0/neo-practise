# f = "./arraySum.rb"
# puts File.exist?(f) #does the named file exist

# puts Dir.pwd or puts Dir.getwd   #To display the current dirctory.

# puts Dir.home   #To display home directory

# # Traversing the directory structure

# # #To make a directory
# secret = "vault"
# # Dir.delete(secret)       # To delete any directory.
# # Dir.rmdir(secret)      # To delete any directory.

# # Dir.mkdir(secret)       # To create any directory.
# # Dir.empty?(secret)      #To check the directory is empty or not 
# # Dir.chdir(secret)       # To change the directory to secret
# # Dir.mkdir("cash")       # To create a directory cash inside secret.

# # To remove a directory and there is a data in the directory then use following:
# # require "fileutils"
# # FileUtils.rm_r secret   # remove recursively

# puts Dir.entries secret     # to display the list of entries in the directory with single dot,etc.. 
# puts Dir.children secret     # to display the list of entries in the directory (only files).
# puts Dir.glob("*")      # to display all the files in current directory.


### files
"r" - Open for reading.Default mode
"r+" - Open for reading & writing.Starts at the beginning of the file.Fail if the file doesnt exist.
"w" - Open for writing.Create a new file or truncate an existing file.
"w+" - Like 'w', but allows reading aswell.
"a" - Open for writing, but append to the end of the file if already exist.
"a+" - Like 'a', but allows reading aswell.








# File.open("employees.txt", "r") do |file|
#     # puts file.read()        #To display the file
#     # puts file.readline()     #To display 1 line at a time
#     # puts file.readline()
#     # puts file.readchar()     #To read charater 1 at a time
#     # puts file.readchar()
# open("employees.txt", "r") do |file|
    #     # puts file.read()        #To display the file
    #     # puts file.readline()     #To display 1 line at a time
    #     # puts file.readline()
    #     # puts file.readchar()     #To read charater 1 at a time
    #     # puts file.readchar()
    
    #     # for looping through each line 
    #     for line in file.readlines()
    #         puts line
    #     end
    
    # end
#     # for looping through each line 
#     for line in file.readlines()
#         puts line
#       # end

# end

# or 

# file = File.open("employees.txt", "r")
# File.truncate(file,0) #to erase all existing content 
# puts file.read
# file.close      #always have to close 


# File.open("./employees.txt", "a") do |file|     # a if for append
#     file.write("\nAkash, development")          # using \n for going to line
#    puts file.mtime()
# end

# To check the last modified time of file
File.open("./employees.txt", "r") do |file|     # a if for append
     puts file.mtime()  
end


## for comparing 2 files
file = File.open("employees.txt", "r")
csv = File.open("article.csv", "r")

puts File.identical?(file,csv)
puts File(file).mtime < File(csv).mtime
puts File(file).mtime < File(csv).mtime
puts File(file).mtime == File(csv).mtime
