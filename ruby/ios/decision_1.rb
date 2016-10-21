# a = '1634'
# p b = a[0].to_i ** 4 + a[1].to_i ** 4 + a[2].to_i ** 4  + a[3].to_i ** 4

sum = 0

(10000..100000).each do |i|
  a = i.to_s
  sum += i if i == a[0].to_i ** 5 + a[1].to_i ** 5 + a[2].to_i ** 5  + a[3].to_i ** 5 + a[4].to_i ** 5
end

puts sum

# =>
# 54748
# 92727
# 93084
# sum = 240559
