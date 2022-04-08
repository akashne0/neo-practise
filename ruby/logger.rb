# require 'logger'

# log = Logger.new('log.txt','daily')     # can also be written as ('log.txt',daily/weekly/monthly) 
# log.level = Logger::WARN

# log.debug 'This is debug message & ignored'
# log.error 'This is an error'
# log.info 'This is info for bug'
# log.warn 'This is warning from server'
# log.fatal 'This is fatal issue from server'


## if want to save the error in begin resue statement to a new file.
def error_logger(e)
    File.open("error_log.txt", 'a') do |file|
        file.puts e
    end
end

begin
    puts nil * 10
rescue StandardError => e
    error_logger("Error:#{e} at #{Time.now}")
end