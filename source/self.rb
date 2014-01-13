class Person
  def self.example_class_method
    puts "We're calling an example class method"
    puts "'self' is always defined.  What is 'self' here?  Let's see."
    return self
    puts "That was self!"
  end

  def example_instance_method
    puts "We're calling an example *instance* method"
    puts "'self' is defined here, too, but it means something different."
    return self
    puts "That was self, again, but see how it's an instance of the class."
  end
end

## Write your driver code to run both methods above here:
andy = Person.new

p Person.example_class_method == Person
p andy.example_instance_method == andy

## MODULE CONTEXT
## The following are identical.  Comment each out separately and write the driver code to run the hypot method

module Math
  def self.hypot(a, b)
    Math.sqrt(a**2 + b**2)
  end
end

module Math
  def Math.hypot(a, b)
    Math.sqrt(a**2 + b**2)
  end
end

p Math.hypot(3,4) == 5


=begin
Self is a thing that is always defined by its context.
When used in a block of code, it always references whatever that
block of code is acting on.
=end