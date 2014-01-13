=begin------DEFINITION OF SELF-----

self is a quick way of referring to the object (whether it be an instance, class, or module)
Ruby is currently working inside of. We can also call this the "context." self allows a programmer
to quickly refer to the current context without having to know its specific name. It also
allows a programmer to define class methods by prefixing a method definition with self.

=end

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

## MODULE CONTEXT
## The following are identical.  Comment each out separately and write the driver code to run the hypot method

# module Math
#   def self.hypot(a, b)
#   ((a**2 + b**2)**0.5).to_i
#   end
# end

module Math
  def Math.hypot(a, b)
    ((a**2 + b**2)**0.5).to_i
  end
end


#-----DRIVERS-----
me = Person.new
Person.example_class_method
puts "----"
me.example_instance_method

puts Math.hypot(3, 4)