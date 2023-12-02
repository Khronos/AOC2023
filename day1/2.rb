input = IO.readlines("input.txt")
debug = input.map(&:clone).map {|x| [x]}
numbers = [
       ["one", "o1e"],
       ["two", "t2o"],
       ["three","t3e"],
       ["four","f4r"],
       ["five", "f5e"],
       ["six","s6x"],
       ["seven","s7n"],
       ["eight","e8t"],
       ["nine","n9e"]
]
input.each_with_index.map do |x, index|
  numbers.each do |n|
    x.gsub!(/#{n[0]}/, n[1] )
  end
  debug[index] << x.clone
end
input.each_with_index.map do |x, index|
  x.gsub!(/\D+/,'')
  debug[index] << x.clone
end
input.each_with_index.map do |x, index|
  x.sub!(/#{x}/, "#{x[0]}#{x[-1]}")
  debug[index] << x.clone
end
pp debug
pp input.inject(0) { |sum, n| sum + n.to_i }
