You now have a terminal with `Ruby` installed. 

# Interactive Ruby
Open an interactive ruby environment. This gives the benefit of executing a command and seeing it's 
result straight away.

Open it with:

`irb`{{execute}}

# Basic calculator

A simple example of Ruby is a basic calculator.

* Try adding two numbers and see the result
`1+1`{{execute}}
The result is shown as `2`

* Try multiplication
`5*5`{{execute}}
The result is shown as `25`

* Division
`5/3.0`{{execute}}

# Make useful data

* 50 a's
`'a' * 50`{{execute}}

* Current time
`Time.now`{{execute}}

* A range of data
`('A0'..'B2').to_a`{{execute}}

* A unique id

Require library, supporting code
`require 'securerandom'`{{execute}}

Create a unique id using it
`SecureRandom.uuid`{{execute}}

# Working with files

* Create file
`File.write 'test.txt', 'TEST CONTENT'`{{execute}}
You will see appear above in the editor.

* Read from file
`File.read 'test.txt'`{{execute}}

* Create list of files (from a to f each ending with `.txt` and each having their letter as content)
`('a'..'f').to_a.each { |n| File.write "#{n}.txt", n }`{{execute}}

* Retrieve list of files matching regular expression
`Dir.glob('*.txt')`{{execute}}

These are just a few of the very basics. Ruby can be do a whole lot more.

# Exit interactive session

It's easy to exit this interactive terminal at any time with
`exit`{{execute}}
