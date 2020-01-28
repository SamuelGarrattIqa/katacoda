
# Pending steps

When doing this in visual studio, one can auto generate the step definitions from a feature file.

That will produce the following content shown within the `StepDefinitions` namespace below.
For convenience, the libraries we'll use later are added in also below with `using` keyword.

```csharp
using SpecFlowApiTests.Lib.ApiObjects; // Added to reference the Api Object we defined previously
using TechTalk.SpecFlow;
using System.Collections.Generic; // Used for creating dictionaries
using Newtonsoft.Json.Linq; // Used for creating JSON tokens
using Newtonsoft.Json;      // Used for deserialising JSON to C# objects
using FluentAssertions;     // Used for making assertions

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

Open `StepDefinitions/PuppySteps.cs`{{open}} and paste the content above into it.

Run `dotnet test`{{execute}}. 

You will see that it shows `Skipped: 1`, meaning that the test was skipped because it has not been implemented.

# Add variable that will be used

Within the `public class PuppySteps` add a variable name that will be shared across step definitions with the following code

`private string _name = "Default name"; // Name of the puppy`

# Store name within variable from first step

Change the first step definition to have the following code:

```csharp
[Given(@"I want a puppy with a name of '(.*)'")]
        public void GivenIWantAPuppyWithANameOf(string name)
        {
            // Store name so it can be used in a future step
            _name = name;
        }
```

This step definition has a parameter which is set within single quotes in the feature file as 'Laddie'. We're taking it in and assiging it to the variable `_name` which
will be used in further step definitions. 


