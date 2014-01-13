
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
p Person.example_class_method
p Person.new.example_instance_method
nickc = Person.new
nickc.example_instance_method

## MODULE CONTEXT
## The following are identical.  Comment each out separately and write the driver code to run the hypot method

module Math
  def self.hypot(a, b)
    sqrt(a**2 + b**2)
  end
end

p Math.hypot(3, 4)

module Math
  def Math.hypot(a, b)
    sqrt(a**2 + b**2)
  end
end

p Math.hypot(3, 4)

# Class methods are used as a general idea among things
# Instance methods are called on specific examples of code.
# Self is used, then, to refer either to the general Class (in the example of self.example_class_method)
# or to the instance when not specified (e.g., example_instance_method)

# In the reference to Modules, there is no difference.