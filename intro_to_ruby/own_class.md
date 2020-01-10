# First class
A class is created using the `class` keyword. A new instance of it is created using the `.new` method.
This `new` method will call a special method `initialize` when creating an instance of the class. Define what
is in this method to have code that will be executed when the class is instantiated.

For example

`
class MyClass
  def initialize
    puts "Hi I'm an object with id #{object_id}"
  end
end
`{{execute}}
 
Now create an instance of the object. `MyClass.new`{{execute}}.

# Class inheriting from another
You can easily extend an existing class by using the `<` after the class name followed by another class.

The example below creates a class by subclassing/inheriting from the `Array` class. 
The `join` method comes from the Array class.
The `to_csv` method calls it and returns a `String` with all items of the array being comma separated

`
class CsvArray < Array
  def to_csv
    join(',')
  end
end
`{{execute}}

Then create an instance of it and call the custom method
`CsvArray.new([1,2,3]).to_csv`{{execute}}

# Module
A module is a special kind of class that is a collections of methods that cannot be instantiated yet can be included
in other classes.

For example, create a flying module:
`
module Flying
  def ascend
    @height += 50
  end
  def descend
    @height = @height > 50 ? @height - 50 : 0
  end
end
`{{execute}}

> The above shows use of the [Elvis operator](https://en.wikipedia.org/wiki/Elvis_operator) for a 
> shortcut if else statement

Then create a class that includes it
`
class Bird
  attr_accessor :height
  include Flying
  def initialize(height: 0)
    self.height = height
  end
end
`{{execute}}

Now you can make a new bird `bird = Bird.new height: 5`{{execute}} and make it 
fly up `bird.ascend`{{execute}} and down `bird.descend`{{execute}} and check the height `bird.height`{{execute}}
calling the methods defined in the `Module`.

Now you can `exit`{{execute}} IRB. 