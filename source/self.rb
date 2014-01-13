
## CLASS CONTEXT

class Person
  def self.example_class_method
    puts "We're calling an example class method"
    puts "'self' is always defined.  What is 'self' here?  Let's see."
    p self
    puts "That was self!"
    self
  end

  def example_instance_method
    puts "We're calling an example *instance* method"
    puts "'self' is defined here, too, but it means something different."
    p self
    puts "That was self, again, but see how it's an instance of the class."
    self
  end
end

## Write your driver code to run both methods above here:
person = Person.new
p Person.example_class_method == Person
p person.example_instance_method == person
## MODULE CONTEXT
## The following are identical.  Comment each out separately and write the driver code to run the hypot method

module Math
  def self.hypot(a, b)
  # maths in here
  end
end

# module Math
#   def Math.hypot(a, b)
#     # maths in here
#   end
# end