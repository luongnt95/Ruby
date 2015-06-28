a = [1,2,3,4]

over_two = Proc.new {|x| x > 2}

puts a.select(&over_two)

over_2 = proc {|x| x > 2}

puts a.select(&over_2)

def add(a, b, action)
	action.call(a, b)
end

l = lambda {|a, b| a + b}
puts add(3, 4, l)

def add
	yield(3, 4)
end
add {|a, b| puts a + b}

def add(a, b)
	yield(a, b)
end

add (3, 4) {|a, b| puts a+b}

p = Proc.new {|a, b| puts a**2+b**2 } # => #<Proc:0x3c7d28@(irb):1>
p.call 1, 2 # => 5
p.call 1 # => NoMethodError: undefined method `**' for nil:NilClass
p.call 1, 2, 3 # => 5
l = lambda {|a, b| puts a**2+b**2 } # => #<Proc:0x15016c@(irb):5 (lambda)>
l.call 1, 2 # => 5
l.call 1 # => ArgumentError: wrong number of arguments (1 for 2)
l.call 1, 2, 3 # => ArgumentError: wrong number of arguments (3 for 2)