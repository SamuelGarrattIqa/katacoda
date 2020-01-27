# Understand API we'll be talking to

Have a look at the [petstore API](https://petstore.swagger.io/#/). This is the API that we'll be playing with in our test.

You will notice that the URL for version 2 of this API is specified in the `ApiHost` constant of the `ApiCommon` class.

`Lib\ApiObjects\ApiCommon.cs`{{open}}

# Create API object

Create a new api object within `Lib\ApiObjects` that inherits from the `BackendDataBase` class.

Name the file `PetStore.cs`
`Lib\ApiObjects\PetStore.cs`{{open}}

and put in it the following details.

```csharp
using NewNAITTest.Lib.ApiObjects;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;

namespace SpecFlowApiTests.Lib.ApiObjects
{
    class PetStore : BackendDataBase
    {
        public override string SubPath => "pet";

        public override string Description => "PetStore";

        public override Dictionary<string, JToken> DefaultCreateParameters()
        {
            return new Dictionary<string, JToken>
            {
                { "name", "doggie" },
                { "status", "available" }
            };
        }
    }
}
```

The SubPath is the path AFTER the `ApiHost` set earlier. The Description is purely for display purposes when things go wrong.

Within the `DefaultCreateParameters()` we are creating a dictionary of default values that will be used when performing a `POST` HTTP method to this API.
This can be overriden.

# Set JSON parameters using when parsing JSON response


