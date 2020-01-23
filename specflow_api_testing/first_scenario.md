The first scenario will be to order a puppy with a specific name. 

Update the feature file at `Features/Puppy.feature`{{open}} with the following content:

```
Scenario: Order a Puppy with specific name
	  Given I want a puppy with a name of 'Laddie'
	  When I order a Puppy
	  Then the puppy ordered has the name 'Laddie'	  
```

This is a plain english text file that should be easily understood by non technial users of the business. It should have come about through colloboration among three omegos (a dev, test analyst, and someone representing the business).
