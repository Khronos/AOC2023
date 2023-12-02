input = IO.readlines("input.txt")
input.map { |x| x.gsub!(/\D+/,'') }
input.map { |x| x.sub!(/#{x}/, "#{x[0]}#{x[-1]}") }
pp input.inject(0) { |sum, n| sum + n.to_i }
