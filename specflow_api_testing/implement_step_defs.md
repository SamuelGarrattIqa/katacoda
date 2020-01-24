
# Pending steps

When doing this in visual studio, one can auto generate the step definions from the feature file.

That will produce the following content (libraries we'll use are added in also below with `using` keyword)

```csharp
using SpecFlowApiTests.Lib.ApiObjects; // Added to reference the Api Object we defined previously
using TechTalk.SpecFlow;
using System.Collections.Generic; // Used for creating dictionaries
using Newtonsoft.Json.Linq; // Used for creating JSON tokens
using Newtonsoft.Json;      // Used for deserialising JSON to C# objects

namespace SpecFlowApiTests.StepDefinitions
{
    [Binding]
    public class PuppySteps
    {
        [Given(@"I want a puppy with a name of '(.*)'")]
        public void GivenIWantAPuppyWithANameOf(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"I order a Puppy")]
        public void WhenIOrderAPuppy()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"the puppy has the name specified")]
        public void ThenThePuppyHasTheNameSpecified()
        {
            ScenarioContext.Current.Pending();
        }            
    }
}
```

The `ScenarioContext.Current.Pending();` indicates that a step has not been implemented. 

If you run `dotnet test`{{execute}} now you will see that it has `Skipped: 1`, meaning that the test was skipped because it has not been implemented.

# Add variable that will be used

Within the `public class PuppySteps` add a variable name that will be shared across step defititions with the following code

`private string _name;`

# Store name within variable from first step

Change the first step definition to have the following code:

```csharp
[Given(@"I want a puppy with a name of '(.*)'")]
        public void GivenIWantAPuppyWithANameOf(string name)
        {
            _name = name;
        }
```

This step definition has a parameter which is set within single quotes in the feature file as 'Laddie'. We're taking it in and assiging it to the variable `_name` which
will be used in further step definitions. 


