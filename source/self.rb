
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

# module Math
#   def self.hypot(a, b)
#   Math.sqrt(a * a + b * b)
#   end
# end

module Math
  def Math.hypot(a, b)
    Math.sqrt(a * a + b * b)
  end
end

p Math.hypot(3,4) == 5

=begin

self is a keyword used to establish what you are currently working on.  Often self is an unneccasary addition as it is implied,
but can be useful if you want to use the class itself as a variable call.  This will make it able to used without creating a new instance of the class.
this is why we can call Math.sqrt on numbers without having to create a new Math class instance variable.  It can be very useful for methods
that we want to use on data often.

end
