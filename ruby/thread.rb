# p Thread.new {puts 1}

threads = []

threads << Thread.new{puts 1}
threads << Thread.new{puts 2}
threads << Thread.new{puts 3}
# threads << Thread.new{raise 'something'}



puts 123
# sleep(10)
threads.map(&:join)