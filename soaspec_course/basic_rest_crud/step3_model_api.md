# Model the API
Now that you have created your first `GET` request against the API using code, it's time to 
create a class to model interactions with the API being tested. This is where the `Soaspec` gem
comes in.

Within the interactive terminal paste the following code to create a class `HouseService` to 
interact with the API.

<pre class="file" data-target="clipboard">
# House object that talks to the backend and retrieves house results
class HouseService < Soaspec::RestHandler
  base_url "http://localhost:14000/houses"
end
</pre>

# Use model

Get the same response as before using this service.

`response = HouseService.get.response`{{execute}}

See how class of response `response.class`{{execute}} is the same as before.

Notice how the url did not need to be specified. This is because it is stored within the class.
This is useful for reducing the need to copy and paste basic configuration of an API. It also
provides an abstraction between the technical implementation of interaction with the `HouseService` API.
Things like authentication, headers, representation of elements in the request and response can all be
configured in this `Service` class. If a basic part of the API changes, then only that class would need
to be changed.

# Understand exchange

If you performs a `get` method on the `HouseService` class, you get an `Exchange` object. This object
represents a `request/response` pair. It allows you to build up a request within itself and then create
a call to an API and verify a response. It will make more sense with the subsequent examples.

Let's create an exchange `exchange = HouseService.get`{{execute}} 

You may notice that no HTTP request is made at this point
 
Now interrogate it by it's methods

* See class `exchange.class`{{execute}}
* See the url that will be used `exchange.request_parameters.full_url`{{execute}}
* Get response object `exchange.response`{{execute}}. At this point the call will be made

At any point of retrieving aspects of the response, a call to the response will be made. After that
the response returned will be reused.
