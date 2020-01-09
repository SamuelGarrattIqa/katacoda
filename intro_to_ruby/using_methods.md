# Methods

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

What's with the underscores you may ask? In Ruby, the convention for classes is to use CamelCase 
(or more precisely PascalCase as CamelCase can have other forms like thisKindOfForm)
and for methods and variables either 'ALLCAPS' or 'snake_case'.

Run your method. `my_first_method`{{execute}} You should see `It did something`

The 'def' keyword tells Ruby you're defining a method. The 'end' keyword tells Ruby the definition's finished. You'll understand this more in the future
session on BLOCKS.
The 'return' is actually another key method telling the method to immediately return with the parameters passed to it. 
This 'return' word is necessary in many languages but in Ruby by default the last line of a method is what will be returned.

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

## Question mark

By convention, a method ending in a question mark returns a true or false. 

Strongly typed languages like Java would use the convention `isEmpty()` `isDigit()`, whereas Ruby has the convention 
`empty?` or `digit?`.

Example:
* Create list with 3 numbers `list = [1, 2, 3]`{{execute}}
* Check if list is empty `list.empty?`{{execute}} Returns false 
* Create empty list `empty_list = []`{{execute}}
* Check if list is empty `empty_list.empty?`{{execute}} Returns true as expected

## Getters and setters

The convention for any method that sets something is with a '=' at the end of it and to retrieve the same value, 
just use the name itself.

Example:
* Create an empty Hash `translator = {}`{{execute}}
* Set a key called `:hello` to the value `ki ora` `translator[:hello] = 'ki ora'`{{execute}}
* Retrieve the value of :hello from the Hash. Will show 'ki ora' `translator[:hello]`{{execute}}

# Parameters

A method that always does the same thing is pretty boring. It's better to be able to pass parameters to it and it act on these.

`
def echo(input)
  input
end
`{{execute}}

This pretty much just returns whatever you passed to it. Pretty pointless but I hope you get the idea.
If you from other programming languages you might have seen a method declaration like

```
Object echo(Object input) {
  return input
}
```

Run your method in irb
```
echo  'hi'
=> "hi"

echo 43
=> 43
```

Ruby is not a strict as these languages, allowing you not to explicitly specify the class of each parameter. This allows a great amount of flexiblity and also simplifies your code.

## Default values

If we need to run the echo method without specifying a parameter we will get an error.
```
echo
ArgumentError: wrong number of arguments (given 0, expected 1)
```

We can easily specify a default value in the method declaration by saying it equals a value when we declare the paremeter.
E.g

```ruby
def echo input='DEFAULT INPUT'
  input
end
```

Then when we call `echo`, we will get the 'DEFAULT INPUT' that was set.

## Flexible number parameters

By using a hash as a parameter, we can have a flexible number of parameters in a method.

For example:
```ruby
def html_tags(tags)
  tags.each do |tag, tag_value|
    puts "<#{tag}>#{tag_value}</#{tag}>"
  end
end 
```

This method uses a loop. Don't worry about that for now. It will be covered later. The idea is that you can see the tags can have an arbitrary number of parameters.

Then you can call it with an arbitrary number of parameters
`html_tags b: 'test', i: 'value', h1: 'Heading'`
or
`html_tags a: 'link', p: 'paragraph'`

## Hash parameters

When you want to have parameters where the order does not matter or you would rather someone explicitly say the parameter name, you can use a colon after the parameter name and then the default value.

For example

`
def introduce(first_name: 'Test', last_name: 'Last')
  puts "Hello #{first_name} #{last_name}. I like your last name #{last_name}"
end
`{{execute}}

Try out different combinations of parameters to the method.
`introduce first_name: 'Bob'`{{execute}}
`introduce last_name: 'Smith'`{{execute}}