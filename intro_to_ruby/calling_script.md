Lines of code can be put together and executed sequentially from within ruby file. 

The extension for these files is `.rb`. Below is a simple file that contains a class
and some code to call a method on it.
`introduce.rb`{{open}}

# Execute ruby script

This ruby script can be executed with the `ruby` command. 

`ruby introduce.rb`{{execute}}

# Execute script with parameter

This same script uses the first parameter (if set) to override the name of the person. Try it out
`ruby introduce.rb Sally`{{execute}}

# Execute ruby code within context (Cucumber)

One can easily create their own executable that can run ruby code within a certain context. One common
example is `cucumber`. Cucumber enables a human readable text file with plain english text to form a test that can
be executed by code. 

Within the `features` folder is an `addition.feature` file which specifies the expected behaviour of a system.
`features/addition.feature`{{open}}

Within the `step_defintions` folder there is a ruby file which specifies code to run based upon the regular
expressions matched.
`features/step_definitions/addition.rb`{{open}}

This code can be run with the `cucumber` command. `cucumber`{{execute}}

This has just run some tests and shown the result.

# Quiz

>>Q1: How do you execute a single ruby file<<
(*) ruby FILENAME
( ) ./FILENAME
( ) ruby execute FILENAME