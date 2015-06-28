def inverse(x)
	raise ArgumentError, 'Argument is not a numeric! Please, input a again!' unless x.is_a? Numeric
	1.0/x
end

puts inverse(2)
# puts inverse('Hello') 
# program will terminate at which the exception is caused if exception is not rescued

def raise_and_rescue
	begin
		puts 'begin'
		inverse('Hello')
		puts 'end begin'
	rescue Exception => e
		puts e
		puts e.message
		puts e.backtrace.inspect
	end
end

raise_and_rescue

puts 'program is terminated'


class Name
	attr_reader :first_name, :last_name

	def initialize(first_name, last_name)
		self.first_name = first_name
		self.last_name = last_name
	end

	def name
		"#{@first_name} #{@last_name}"
	end

	
	private

	def first_name=(first_name)
		if first_name == nil or first_name.size == 0
			raise ArgumentError.new('Everyone must have a first_name')
		end
		@first_name = first_name
	end

	def last_name=(last_name)
		if last_name == nil or last_name.size == 0
			raise ArgumentError.new('Everyone must have a last_name')
		end
		@last_name = last_name
	end
end

person = Name.new('luong', 'nguyen')
puts person.name

person = Name.new('luong', nil)
puts person.name
