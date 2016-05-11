require 'pp'

puts 'Enter count of rows = '
rows = gets.to_i

#generate triangular matrix
values = Array.new(rows) { |i| Array.new(i+1) { rand(100) } }
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
puts "Sum = #{sum}"

=begin
Enter count of rows = 
15
[[38],
 [79, 71],
 [80, 23, 12],
 [53, 59, 35, 6],
 [0, 98, 45, 56, 3],
 [42, 76, 30, 96, 9, 84],
 [52, 18, 16, 41, 0, 54, 90],
 [70, 86, 32, 73, 56, 30, 60, 60],
 [10, 55, 90, 82, 82, 51, 83, 56, 0],
 [21, 13, 57, 97, 74, 48, 46, 85, 77, 15],
 [93, 57, 40, 4, 18, 96, 46, 32, 50, 85, 71],
 [62, 85, 42, 41, 58, 7, 12, 1, 13, 17, 34, 41],
 [2, 16, 85, 71, 36, 57, 63, 15, 50, 75, 38, 41, 93],
 [74, 15, 80, 90, 1, 11, 2, 19, 75, 43, 26, 19, 13, 67],
 [42, 48, 71, 9, 45, 47, 61, 65, 72, 37, 4, 5, 59, 80, 45]]
Sum = 740
=end