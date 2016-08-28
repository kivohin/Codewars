class Array
	def map_with_fallback
		
	end
end

class Animal
  def initialize(name)
    @name = name
  end

  def describe
    puts "This animal's name is #{@name}"
  end
end

class Dog < Animal
end

class Cat < Animal
end

class Human < Animal
  def initialize(name, salary)
    super(name)
    @salary = salary
  end

  def describe_with_salary
    puts "This human's name is #{@name} and its salary is #{@salary}"
  end
end

dog = Dog.new "Winston Furchill"
cat = Cat.new "David Meowie"
human = Human.new "Johnny Appleseed", 12000

dog.describe
cat.describe
human.describe
human.describe_with_salary