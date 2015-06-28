class Dog  
  def initialize(breed, name)  
    # Instance variables  
    @breed = breed  
    @name = name  
  end  
  
  def bark
    puts 'Ruff! Ruff!'  
  end  
  
  def display  
    puts "I am of #{@breed} breed and my name is #{@name}"  
  end  
end  

d = Dog.new('Labrador', 'Benzy')  
puts d.respond_to?(:talk)

if d.respond_to?("Ruff! Ruff!")  
  d.talk  
else  
  puts "Sorry, d doesn't understand the 'talk' message."  
end  
  
d.bark  
d.display

d1 = d  
d1.display  
  
# making d a nil reference, meaning it does not refer to anything  
d = nil  
d.display  
  
# If I now say  
d1 = nil  

d = Dog.new('Alsatian', 'Lassie')  
puts d.class.to_s 

class Duck
  @@count = 0


  def initialize
    @@count += 1
    @count1 = 0
  end

  def self.to_count
     @@count
  end

  def to_count1
     @count1
  end
end

Duck.new
puts Duck.to_count
puts Duck.new.to_count1