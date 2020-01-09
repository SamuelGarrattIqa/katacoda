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

Create unique id
`SecureRandom.uuid`{{execute}}

# Work with files

* Create file
`File.write 'test.txt', 'TEST CONTENT'`{{execute}}

* Read from file
`File.read 'test.txt'`{{execute}}

* Create list of files
`('a'..'f').to_a.each { |n| File.write "#{n}.txt", n }`{{execute}}

* Perform process on this list
`Dir.glob('*.txt')`{{execute}}

# Exit interactive session

It's easy to exit this terminal at any time

`exit`{{execute}}
