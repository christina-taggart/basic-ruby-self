
## CLASS CONTEXT

class Person
  def self.example_class_method
    puts "We're calling an example class method"
    puts "'self' is always defined.  What is 'self' here?  Let's see."
    p self
    puts "That was self!"
  end

  def example_instance_method
    puts "We're calling an example *instance* method"
    puts "'self' is defined here, too, but it means something different."
    p self
    puts "That was self, again, but see how it's an instance of the class."
  end
end

## Write your driver code to run both methods above here:

new_person = Person.new
new_person.example_instance_method

Person.example_class_method

## MODULE CONTEXT
## The following are identical.  Comment each out separately and write the driver code to run the hypot method

module Math
  def self.hypot(a, b)
  # maths in here
  p "I'm doings maths"
  end
end

module Math2
  def Math2.hypot(a, b)
    # maths in here
    p "I'm doings maths 2"
  end
end

puts "Calling by self.hypot"
Math::hypot(1,2)

puts "Calling by Math2.hypot"
Math2::hypot(3,4)

# Write up

# Self accesses the larger context in which the block of code is contained.
# For example, a instance method that contains self in it will access the instance
# variable in which it is running the command. A method defined with self, allows
# it be called by the class name.