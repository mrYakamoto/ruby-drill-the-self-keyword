# Ruby Drill The Self Keyword

##Learning Competencies

* Use instance variables and accessor methods effectively
* Work with objects in Ruby
* Using self to access the current context

##Summary

 There is an enigmatic keyword in Ruby called `self`. You can use this keyword in order to access the context that the program is currently working inside of.  In this exercise you will explore the three main contexts where `self` is used, in common code you will likely only use the last two.


##Releases

###Release 0 : Understand Self

#### Global Context

There is the global or "main" context, which you can see by executing `self.to_s` or `self.public_methods` in IRB.

Try this now.  What are some of the methods available?

#### Class Context

Consider this code:

```ruby
class ClassMethodExample
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

Load `self.rb` up in IRB. Run `irb -r self.rb` from the `source` directory.

Play around with the methods. How do you call them? What does each return? Why?

Write tests for **each** of the methods on `Person`

#### Module Context

You can also use self when you want to create "class methods", like `Math.hypot(3, 4)` in a Module.

```ruby
module Math
  def self.hypot(a, b)
    # maths in here
  end
end
```

This is identical to using the module explicitly:

```ruby
module Math
  def Math.hypot(a, b)
    # maths in here
  end
end
```

In this context, `self` _is_ the class, and most Rubyists use `self` to define class methods.

Implement `#hypot` and then write a test for it. When the test passes, comment out the first definition of `#hypot` and uncomment the second (make sure you feel in the contents of `#hypot`). You should see that the test passes because the definitions are equivalent.

###Release 1: Write it up

After reading this challenge and practicing with `self` you should have a solid understanding of it. Write up an explanation of self in your own words, and submit it as comments at in the `self.rb` file.  Make sure even your deaf grandma would understand it!

##Resources
