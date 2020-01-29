# Clone repository

Open location of editor, to open it please click on the following black text:
`cd /home/scrapbook/tutorial`{{execute}}

The step below will clone the repository created for the training. Click on the black text again to run on in the Terminal.
`git clone https://gitlab.com/samuel-garratt/specflow_api_test.git`{{execute}}

Note that as you click the black text it appears and runs on the bottom right hand side terminal.

# Understand basic files

Navigate to the created folder. `cd specflow_api_test`{{execute}}

# Download nuget packages

These are the external dependencies or lib the project has. Download them with:

`dotnet restore`{{execute}} 

# Build solution
Once that's done, we will build the solution. This ensures that all the code can compile. Ignore the warnings. There should be 0 errors.

`dotnet build`{{execute}}

# Run tests
The whole repository has already been set up for you. It can be viewed form the top half of the screen, center panel of the screen. 
Within the repository, there is a feature file called Puppy.feature. 

It can be viewed from here `specflow_api_test/SpecFlowApiTests/Features/Puppy.feature`{{open}}

There is only one unimplemented test that should pass. To run the test click

`dotnet test`{{execute}}

* There is also a Setup file, that contains step that helps setting up the test.
The set up file can be viewed from here `specflow_api_test/SpecFlowApiTests/Support/SetUp.cs`{{open}}

Inside the setup method `lines 13-20` is code to set some basic settings for handling `JSON`. 
The API request and responses are in Json format and hence we need something to handle it.
It also stores a property `GetInformation.Client` that can be used for any API object. 
It represents the client that submits the requests and recieves the response. 