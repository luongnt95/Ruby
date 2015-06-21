# Array, symbol, Hash

array = [1,4,3,2,5]
puts array.min
puts array.max
puts array.length
puts array.include?(1)
puts array.pop
puts array.empty?
puts array.first(2)
puts array.sort! # ! means permanently

lover = ['Linh', 'Nga', 'Trang']
lover.each do |x|
	puts 'I love ' + x + '!'
end

lover.each{|x| puts "I love #{x} !"}

str = "a is me"
str['a'] = 'luong'
puts str

a = str.to_s
puts a.reverse


dic = {'hello'=> 'xin chao', 'goodbye' => 'tam biet'}
puts dic['hello']
puts dic.keys
puts dic.values

dic.delete('hello')
puts dic

result = {"luong" => :excelent, "nga" => :good, "long" => :good}
puts result["luong"]