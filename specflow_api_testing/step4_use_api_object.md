# Create PetStore API object class

Add the following text to a new file `specflow_api_test/SpecFlowApiTests/Lib/ApiObjects/ApiService/PetStoreApiService.cs`{{open}}.
This is a class that will handle interactions with the API under test.

<pre class="file" data-target="clipboard">
using SpecFlowApiTest.Lib.ApiObjects;
using System;
using System.Collections.Generic;
using System.Text;

namespace SpecFlowApiTests.Lib.ApiObjects
{
    class PetStoreApiService : BaseApiService
    {
        public override string SubPath =&gt; "pet";

        public override string Description =&gt; "Pet";

        /// &lt;summary&gt;
        /// Create a new entity
        /// &lt;/summary&gt;
        /// &lt;param name="Name"&gt;Name of puppy&lt;/param&gt;        
        /// &lt;returns&gt;Id of Entity&lt;/returns&gt;
        public string Create(PetStoreDto petStore)
        {            
            return CreateId(petStore.CreateObj());
        }       
    }    
}
</pre>

Within the `ApiService` class `specflow_api_test/SpecFlowApiTests/Lib/ApiObjects/ApiService/PetStoreApiService.cs`{{open}} add the following code to create
static methods that will call methods on the `PetStoreApiService` class.

<pre class="file" data-target="clipboard">
/// &lt;summary&gt;
/// Create Pet from a model of the pet properties
/// &lt;/summary&gt;
/// &lt;param name="petStore"&gt;Object for defining building a pet&lt;/param&gt;
/// &lt;returns&gt;Response from creation of Pet&lt;/returns&gt;
public static string Create(PetStoreDto petStore)
{
	return new PetStoreApiService().Create(petStore);
}

/// &lt;summary&gt;
/// Get a Pet that has the provided Id
/// &lt;/summary&gt;
/// &lt;param name="petId"&gt;&lt;/param&gt;
/// &lt;returns&gt;&lt;/returns&gt;
public static string GetPet(string petId)
{
	return new PetStoreApiService().Get(petId);
}
</pre>

Now create a class that will 

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
            var postParameters = new Dictionary&lt;string, JToken&gt; { { "name", _name } };
            // Send a POST to PetStore API, storing response body in variable 'responseBody'
            var responseBody = new PetStore().Create(postParameters);
            // Convert response body from String to a 'PetStore' object
            _storeResult = JsonConvert.DeserializeObject&lt;PetStore&gt;(responseBody);
        }
</pre>

The `postParameters` are a list of parameters that will override the `DefaultCreateParameters` defined above. Here you can see that the `_name` variable defined 
in the previous step is being used. 
`new PetStore().Create(postParameters)` will send a `POST` method to the `PetStore` api and store the response body as a `String`. The next line then converts 
this string into a `PetStore` object setting the parameters, `Id`, `Name`, and `Status`.

Run this with `dotnet test`{{execute}}. The output will still say 1 test is skipped (as the last step is still pending).
You can see the HTTP traffic (from the 2nd step) in a file created within the `Logs` folder.
