# Clone repository

Open location of editor:
`cd /home/scrapbook/tutorial`{{execute}}

`git clone https://gitlab.com/samuel-garratt/specflow_api_tests.git`{{execute}}

# Understand basic files

Navigate to created foler. `cd specflow_api_tests`{{execute}}

* Setup file where hooks are `specflow_api_tests/SpecFlowApiTests/Support/SetUp.cs`{{open}}

Inside the setup method `lines 11-18` is some code to set some basic settings for handling `JSON` and stores a a property `GetInformation.Client` that can be used 
for any API object.

# Download nuget packages

`dotnet restore`{{execute}}

# Build solution

`dotnet build`{{execute}}

# Run tests

`dotnet test`{{execute}}
