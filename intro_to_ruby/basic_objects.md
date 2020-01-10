# Basic objects

Following are some the most basic classes in Ruby and examples of how to set them. (They assume `irb` is open)

* Integer docs [here](https://ruby-doc.org/core-2.6.3/Integer.html). 
  An integer is a whole number
  * Create integer with value of 5 `int_object = 5`{{execute}}. The object is stored in a local variable called `int_object`
  * Retrieve it's value by simply referencing it. `int_object`{{execute}}

* Boolean docs for [true](https://ruby-doc.org/core-2.6.3/TrueClass.html) and [false](https://ruby-doc.org/core-2.6.3/FalseClass.html)
`true_object = true`{{execute}}

* String (list of characters) docs [here](https://ruby-doc.org/core-2.6.3/String.html). 
Create new String object with value '5'. `object = '5'`{{execute}} or `object = String.new('5')`{{execute}}

* [Symbol](http://rubylearning.com/satishtalim/ruby_symbols.html) docs [here](https://ruby-doc.org/core-2.6.3/Symbol.html)
Used for representing something, not like a string where each character is important
`symbolic_object = :test`{{execute}}

* Float docs [here](https://ruby-doc.org/core-2.6.3/Float.html). Floats have a decimal component
`decimal = 1.5`{{execute}}

* Similar to above is Rational which represent a fraction which is more exact than a float with rounding. 
Docs [here](https://ruby-doc.org/core-2.6.3/Rational.html)
`one_third = 1/3r`{{execute}}

* Array (List) docs [here](https://ruby-doc.org/core-2.6.3/Array.html)
  * Create list `object = [1,2,3]`{{execute}}
  * Retrieve first item with `object[0]`{{execute}} or `object.first`{{execute}}

* [Hash](http://rubylearning.com/satishtalim/ruby_hashes.html) (Dictionary) docs [here](https://ruby-doc.org/core-2.6.3/Hash.html)
`object = { cat: 'A cute furry animal', dog: 'A strong sturdy animal' }`{{execute}}
Access value of `cat` key with the following
`object[:cat]`{{execute}}

* Range docs [here](https://ruby-doc.org/core-2.6.3/Range.html). Use `to_a` to observe list
  * From 1 to 10 `finger_count = (1..10)`{{execute}}
  * From a to z  `letters = 'a'..'z'`{{execute}}
  * Iterate through decimals `object = ('0.0.0'..'1.0.0').to_a`{{execute}}

* Nil class docs [here](https://ruby-doc.org/core-2.6.3/NilClass.html)
Retrieve class of variable that's not set
`@object.class`{{execute}}
