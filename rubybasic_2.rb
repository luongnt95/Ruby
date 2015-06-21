# Range, block

numbers = 0..10
puts numbers.include?(3)
puts numbers.max
puts numbers.min
puts numbers.reject {|i| i >= 6}

a = numbers.to_a
print a
print "\n"
puts numbers === 2
puts numbers === 2.4
puts numbers == 11

def sample1
	yield
end
sample1{puts "Hello world"}

def sample2
	yield('default')
end
sample2{|str| puts str}

# to be continued ...