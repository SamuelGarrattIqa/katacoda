# Understanding objects

A `class` is a programming concept in which a common structure can be defined and reused repeatedly. Classes have `instances` which are called `objects`.
In Ruby, pretty much everything is a object. Even an instance variable not set to an object is by default an instance of the `NilClass`.
Objects have behaviours (things they do) and attributes (information they store). 

Enter a ruby interactive session again 
`irb`{{execute}}

Within IRB, you're actually in an object. See the public methods available `public_methods`{{execute}}

You see a list of methods available to the object you're currently in. 
Methods (`public_methods` was one) are the way to get the object to perform an action or behaviour.

What class are you in (you might be thinking)?. Well simple, just call the `class` method.
`self.class`{{execute}}

You'll see that the class type is `Object`. All custom classes inherit eventually from this class.

You can check whether an object is a certain class by the method `is_a?`. `is_a?(Object)`{{execute}}
You see 'true' returned as the class is an object.

> Important: Note that for Ruby methods you can pass parameters to a method by either opening a bracket (without a space) or putting a space without brackets.

E.g, `is_a? Object`{{execute}} does exactly the same as the above, passing `Object` to the `is_a?` method. 

Using methods will be covered in detail in a later step.
