# Create PetStore API object class

Add the following text to a new file `specflow_api_test/SpecFlowApiTests/Lib/ApiObjects/PetStore.cs`{{open}}

<pre class="file" data-target="clipboard">
using SpecFlowApiTest.Lib.ApiObjects;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;

namespace SpecFlowApiTests.Lib.ApiObjects
{
    class PetStore : BackendDataBase
    {
        public override string SubPath => "pet";

        public override string Description => "Pet";

        #region fields
        /// <summary>
        /// Unique Id of the pet
        /// </summary>
        public string Id { get; set; }

        /// <summary>
        /// Name to reference the pet by
        /// </summary>
        public string Name { get; set; }
        
        public string Status { get; set; }
        #endregion

        public override Dictionary<string, JToken> DefaultCreateParameters()
        {
            return new Dictionary<string, JToken>
            {
                { "name", "doggie" },
                { "status", "available" } // This simulates a default of 'available' status from system for 2nd scenario
            };
        }
    }
}
</pre>

* Line 8 defines the class `PetStore` and defines that it will inherit from the `specflow_api_test/SpecFlowApiTests/Lib/ApiObjects/BackendDataBase.cs`{{open}} class. That class
  defines a convention for creating data (via a POST with the API) and retieving data from it. You will use the `Create` method in your next step definition
* Line 10 defines the path that will be appended to the `ApiHost` defined at `specflow_api_test/SpecFlowApiTests/Lib/ApiObjects/ApiCommon.cs`{{open}}.
* Lines 14-26 define properties that will be set when [deserialising the JSON response](https://www.newtonsoft.com/json/help/html/SerializingJSON.htm) returned by the API.
* Lines 28-35 define what the default parameters are when performing an HTTP `POST` to the `PetStore` api. 

# Use API object to order a pet

Update the `WhenIOrderAPuppy()` method in `specflow_api_test/SpecFlowApiTests/StepDefinitions/PuppySteps.cs`{{open}} to be the following:

<pre class="file" data-target="clipboard">
        [When(@"I order a Puppy")]
        public void WhenIOrderAPuppy()
        {
            // Create list of parameters that override the 'Defaults' when ordering from PetStore
            var postParameters = new Dictionary<string, JToken> { { "name", _name } };
            // Send a POST to PetStore API, storing response body in variable 'responseBody'
            var responseBody = new PetStore().Create(postParameters);
            // Convert response body from String to a 'PetStore' object
            _storeResult = JsonConvert.DeserializeObject<PetStore>(responseBody);
        }
</pre>

The `postParameters` are a list of parameters that will override the `DefaultCreateParameters` defined above. Here you can see that the `_name` variable defined 
in the previous step is being used. 
`new PetStore().Create(postParameters)` will send a `POST` method to the `PetStore` api and store the response body as a `String`. The next line then converts 
this string into a `PetStore` object setting the parameters, `Id`, `Name`, and `Status`.

Run this with `dotnet test`{{execute}}. You can see the HTTP traffic in a file created within the `Logs` folder.
