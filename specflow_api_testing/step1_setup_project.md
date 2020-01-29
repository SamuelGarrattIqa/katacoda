# Clone repository

Open location of editor:
`cd /home/scrapbook/tutorial`{{execute}}

`git clone https://gitlab.com/samuel-garratt/specflow_api_test.git`{{execute}}

# Understand basic files

Navigate to created foler. `cd specflow_api_test`{{execute}}

* Setup file where hooks are `specflow_api_test/SpecFlowApiTests/Support/SetUp.cs`{{open}}

Inside the setup method `lines 13-20` is some code to set some basic settings for handling `JSON` and stores a a property `GetInformation.Client` that can be used 
for any API object.

# Download nuget packages

These are the external dependencies the project has. Download them with:

`dotnet restore`{{execute}} 

# Build solution

This ensures that all the code can compile. Ignore the warnings. There should be 0 errors.

`dotnet build`{{execute}}

# Run tests

There is only one unimplemented test that should pass.

`dotnet test`{{execute}}
