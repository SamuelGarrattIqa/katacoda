The first scenario will be to order a puppy with a specific name. 

# Add first scenario

Update the feature file at `Features/Puppy.feature`{{open}} and add the following content:

```gherkin
Scenario: Order a Puppy with a specific name
	  Given I want a puppy with a name of 'Laddie' # Example of using a parameter in a step definition
	  When I order a Puppy
	  Then the puppy ordered has the name specified	  
```

# Understand origin for scenario

This is a plain english text file that should be easily understood by non technical users of the business. 
It should have come about through collaboration among three omegos (a dev, test analyst, and someone representing the business).

The scenario defines a particular situation where the behaviour of the system is defined. By having a good amount
of scenarios there should be a common understanding of how a feature is meant to behave.

# Understand steps

The 'When' is the critical action performed that causes a result which is verified in the 'Then'.
In the 'Given', one specifies the background step(s), that set things up for the 'When' to be performed and
give it the proper context. In a simple scenario, 'Given' may not be needed.
The 'Then' step is where the assertion on the expected behaviour. Both the 'Given' and 'Then' steps can have 
an 'And' step but the 'When' should not.