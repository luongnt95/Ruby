# variables

# $ global variable
def basic_method
	puts $x 
end

$x = 10

basic_method

class MyObject

	def initialize(str)
		@str = str
		@@count = defined?(@@count)? @@count+1 : 1 # ternary operator
	end

	def MyObject.count
		@@count
	end

	#the same as

	def MyObject.count1
		@@count
	end

	def to_s
		puts @str
	end
end
