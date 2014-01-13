
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
emily = Person.new
p Person.example_class_method
p emily.example_instance_method

## MODULE CONTEXT
## The following are identical.  Comment each out separately and write the driver code to run the hypot method

module Math
  def self.hypot(a, b)
  c = a**2 + b**2
  hypotenuse = Math.sqrt(c)
  hypotenuse
  end
end

# module Math
#   def Math.hypot(a, b)
#     # maths in here
#   end
# end

p Math.hypot(3,4) == 5

# HELLO GRANDMA! SELF IS A KIND OF PLACEHOLDER REFERRING TO THE CURRENT CLASS OR MODULE THAT
# YOU ARE WORKING WITH. THE METHOD USING MATH UP TOP IS A GOOD EXAMPLE. MATH WASN'T PART OF
# THE METHOD YET, SO WE ADDED IT WITH SELF AS A PLACEHOLDER.
# BYE GRANDMA