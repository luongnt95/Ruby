# every mothods in class are public

class Person

	def initialize(name)
		set_name(name)
	end

	def name
		"#{@first_name} #{@last_name}"
	end

	def set_name(name)
		first_name, last_name = name.split(/\s+/)
		set_first_name(first_name)
		set_last_name(last_name)
	end

	def set_first_name(first_name)
		@first_name = first_name
	end

	def set_last_name(last_name)
		@last_name = last_name
	end
end

# private

class Person

	def initialize(name)
		set_name(name)
	end

	def name
		"#{@first_name} #{@last_name}"
	end

	private 
	def set_name(name)
		first_name, last_name = name.split(/\s+/)
		set_first_name(first_name)
		set_last_name(last_name)
	end

	def set_first_name(first_name)
		@first_name = first_name
	end

	def set_last_name(last_name)
		@last_name = last_name
	end
end

# protected can be used by making objects within its class

class Person

	def initialize(age)
		@age = age
	end

	def age
		@age
	end

	def age_difference_with(other_person)
		(self.age - other_person.age).abs
	end

	protected :age
end

