Now implement the last step of `specflow_api_test/SpecFlowApiTests/Features/Puppy.feature`{{open}} within the 
step definition file at `specflow_api_test/SpecFlowApiTests/StepDefinitions/PuppySteps.cs`{{open}} with
the following code:

```csharp
        [Then(@"the puppy has the name specified")]
        public void ThenThePuppyHasTheNameSpecified()
        {
            // Assert that the name of the PetStore result is the same as the one set
            _storeResult.Name.Should().Be(_name);
        }
```

This uses the `_storeResult` object set in the previous step.  
`_storeResult.Name` returns the `name` retrieved from the JSON response body.

[Fluent Assertions](https://www.fluentassertions.com/) are used to form the assertions. 
A `Should()` method is used on the `Name` which defines this as an assertion. The `_name` variable which we used as an input is then used as the expected value.

Run `dotnet test` and see the test fully pass.
