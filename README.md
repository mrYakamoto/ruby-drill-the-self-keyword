# Ruby Drill The Self Keyword 
 
##Learning Competencies 

##Summary 

 There is an enigmatic keyword in Ruby called `self`. You can use this keyword in order to access the context that the program is currently working inside of. There are three main contexts to consider, though you will likely only ever use `self` in two of them.

There is the global or "main" context, which you can see by executing `self.to_s` or `self.public_methods` in IRB.

Consider this code:

```ruby
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
```

We've defined two methods, here: a class method and an instance method.  `self` references something different depending on the context.  In the class method context, `self` refers to the class itself.  In the instance method context, `self` refers to the particular instance of the class.

Try this code:

```ruby
Person.example_class_method
person = Person.new
person.example_instance_method
```

There is the class or module context, which you can see here:

```ruby
class Person
  puts "You'll see this as the class is being defined."
  puts "In this context, self is: "
  p self
  puts "See? self is the Person class."
end
```

In practice, you'll care about `self` in 2 situations. First, when you want to create "class methods", like `Math.hypot(3, 4)`. The simplest way to define a class method is with:

```ruby
module Math
  def self.hypot(a, b)
    # maths in here
  end
end
```

This is identical to using the class explicitly:

```ruby
module Math
  def Math.hypot(a, b)
    # maths in here
  end
end
```

In this context, `self` _is_ the class, and most Rubyists use `self` to define class methods.

## Objectives

Read the above explanation of self.  Write up an explanation of self in your own words, and submit it in the gist.  Make sure even your deaf grandma would understand it!

<!--
* [Fix some self-related bugs](/exercises/43)

Submit your solution via the Exercises interface and also via the gist above.
--> 

##Releases
###Release 0 

##Optimize Your Learning 

##Resources