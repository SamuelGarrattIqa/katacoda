This tutorial uses a gem `house_test` to provide a simple test API that persists data in memory. 

In the first terminal you will run the server (and see the output of API traffic).

In the 2nd you will run the API tests that create the traffic. 

Within the first host, install the gem with `gem install house_test`{{execute HOST1}}.

Then start a server in the first terminal with

`house_test`{{execute HOST1}}

You will notice that it says it is running locally on port `14000`.

Verify it's up and running with the following curl on the 2nd terminal

`curl localhost:14000/houses`{{execute HOST2}}

You should see an empty array returned. 