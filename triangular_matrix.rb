require 'pp'

puts 'Enter count of rows = '
rows = gets.to_i

#generate triangular matrix
values = Array.new(rows) { |i| Array.new(i+1) { rand(2) } }
pp values
sum = 0

values.each_index do |i|
  subarray = values[i]
  subarray.each_index do |j|
    sum = subarray[0] if i == 0 && j == 0
    if i == j+1
      sum = subarray[j] + sum
    end
  end
end
puts "s = #{sum}"
