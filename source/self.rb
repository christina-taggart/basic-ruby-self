
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

me = Person.new
Person.example_class_method
me.example_instance_method

## MODULE CONTEXT
## The following are identical.  Comment each out separately and write the driver code to run the hypot method

module Math
  def self.hypot(a, b)
    return (a*a) + (b*b)
  end
end

# module Math
#   def Math.hypot(a, b)
#     return (a*a) + (b*b)
#   end
# end

p Math.hypot(3,4)

=begin
 The "self" keyword is used to refrence the current item that we are interacting with.
 This could be a class, a method, or an object.

=end