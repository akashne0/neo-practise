require 'csv'

# for writing in the file
# File.open("../file.csv", "a") do |file|     # a is for append
#     file.write("\n1, akash, singh, kanjurmarg")          # using \n for going to line
#     file.write("\n2, jay, lad, vikhroli")
#     file.write("\n3, sanket, agaskar, virar")
#     file.write("\n4, shilp, pandya, jogeshwari")
# end

counter = 0
CSV.foreach('./file.csv', headers:true) do |row|
  if counter == 0
    puts "|" + row.headers[0].upcase + "|" + row.headers[1].upcase + "|" + row.headers[2].upcase + "|" + row.headers[3].upcase
    # puts row.headers.select{|column| column.upcase}.join("|")

  end
  puts  "|" + row['sr_no'] + " "*"#{5 - row["sr_no"].length}".to_i + "|" + row['firstname'].capitalize + " "*"#{9 - row["firstname"].length}".to_i + "|" + row['lastname'].capitalize + " " * "#{8 - row["lastname"].length}".to_i + "|"+ row['address'].capitalize
   counter += 1   
end



  
