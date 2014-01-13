
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
# Person.example_class_method
# person = Person.new
# person.example_instance_method

## MODULE CONTEXT
## The following are identical.  Comment each out separately and write the driver code to run the hypot method

# module Math
#   def self.hypot(a, b)
#   # maths in here
#   sqrt(a**2 + b**2)
#   end
# end

p Math.hypot(3,4) == 5

module Math
  def Math.hypot(a, b)
    # maths in here
  sqrt(a**2 + b**2)
  end
end

p Math.hypot(3,4) == 5

=begin
Self refers to the context that a method is working in. In an instance method, it refers to the instance
that the instance method was called on. In a class or module method, it would refer to the class
or the module.
=end