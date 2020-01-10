Methods are key to performing pretty much anything in Ruby. 
Just as your keyboard and mouse allow you to interact with a computer, so methods allow you to
interact with objects.

You can call a method on a class with `Class.method_name`

This step assumes you already have `irb`{{execute}} opened. 

Create a simple method called `my_first_method`

`
def my_first_method
  return 'It did something'
end
`{{execute}}

What's with the underscores you may ask? In Ruby, the convention for `classes` is to use `CamelCase` 
(or more precisely PascalCase as CamelCase can have other forms like thisKindOfForm)
and for `methods` and `variables` use `snake_case`. 
`ALLCAPS` is used for variables that are [CONSTANTS](https://www.rubyguides.com/2017/07/ruby-constants/) and 
classes that are abbreviations like `JSON` or acronyms like `XML`.

Run your method. `my_first_method`{{execute}} It returned `It did something`

The `def` keyword tells Ruby you're defining a method. The `end` keyword tells Ruby the definition's finished. 
The `return` is actually another key method telling the method to immediately return with the parameters passed to it. 
This `return` word is necessary in many languages but in Ruby by default the last line of a method is what will be returned.

Therefore the previous method can also be

`
def my_first_method
  'It did something'
end
`{{execute}}

Re run your method. `my_first_method`{{execute}}.
Same result. Now you must have guessed it, although you see a string printed in irb when you call your class, 
it's actually an object. So you can do the following
`my_first_method.class`{{execute}}

# Conventions

_Question mark_

By convention, a method ending in a question mark returns a true or false. 

Strongly typed languages like Java would use the convention `isEmpty()` `isDigit()`, whereas Ruby has the convention 
`empty?` or `digit?`.

Example:
* Create list with 3 numbers `list = [1, 2, 3]`{{execute}}
* Check if list is empty `list.empty?`{{execute}} Returns false 
* Create empty list `empty_list = []`{{execute}}
* Check if list is empty `empty_list.empty?`{{execute}} Returns true as expected

_Getters and setters_

The convention for any method that sets something is with a '=' at the end of it and to retrieve the same value, 
just use the name itself.

Example:
* Create an empty Hash `translator = {}`{{execute}}
* Set a key called `:hello` to the value `ki ora` `translator[:hello] = 'ki ora'`{{execute}}
* Retrieve the value of :hello from the Hash. Will show 'ki ora' `translator[:hello]`{{execute}}

# Parameters

With parameters you are able to pass parameters to it and it act on these. 
Specify parameters by putting their names (comma separated) within brackets.  

`
def echo(input)
  input
end
`{{execute}}

This returns whatever you passed to it. 

Run your method with different parameters `echo 'hi'`{{execute}}, `echo 43`{{execute}}, `echo 1.3`{{execute}}

The brackets are not necessary so you can also define the method as 

`
def echo input
   input
end
`{{execute}}

and it will behave the same way (though I think the first approach is clearer).

Ruby is not a strict as these languages, allowing you not to explicitly specify the class of each parameter. 

This allows a great amount of flexibility and also simplifies your code. You can easily add validation if specific
class types are not allowed or you could also perform a conversion on the input so that you're sure it's in the
correct state.

# Default values

If we need to run the echo method without specifying a parameter we will get an ArgumentError error.
`echo`{{execute}}

We can easily specify a default value in the method declaration by saying it equals a value when we declare the parameter.
E.g

`
def echo(input='DEFAULT INPUT')
  input
end
`{{execute}}

Then when we call `echo`, we will get the 'DEFAULT INPUT' that was set.

# Flexible number of parameters

By using a hash as a parameter, we can have a flexible number of parameters in a method.

For example:
`
def html_tags(tags)
  raise ArgumentError, "Must pass list to method" unless tags.respond_to? :each
  
  tags.each do |tag, tag_value|
    puts "<#{tag}>#{tag_value}</#{tag}>"
  end
end 
`{{execute}}

This method uses a loop and iterates through it creating a tag with a key and the value inside it. 
The idea is that you can see the `tags` parameter can have an arbitrary number of parameters.

Then you can call it with an arbitrary number of parameters
`html_tags b: 'test', i: 'value', h1: 'Heading'`{{execute}}
or
`html_tags a: 'link', p: 'paragraph'`{{execute}}

# Hash parameters

When you want to have parameters where the order does not matter or you would rather someone explicitly say the 
parameter name, you can use a colon after the parameter name and then the default value.

For example

`
def introduce(first_name: 'Test', last_name: 'Last')
  puts "Hello #{first_name} #{last_name}. I like your last name #{last_name}"
end
`{{execute}}

Try out different combinations of parameters to the method.
`introduce first_name: 'Bob'`{{execute}}
`introduce last_name: 'Smith'`{{execute}}
