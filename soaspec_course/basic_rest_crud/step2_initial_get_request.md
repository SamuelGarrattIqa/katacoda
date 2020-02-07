Install the `soaspec` gem. This `gem` is the focus of this course.
 
`gem install soaspec`{{execute}}

Now open an interactive terminal to execute ruby code that will have `soaspec` preloaded.

`soaspec pry`{{execute}}

Now perform a get using the [RestClient]() gem (Used behind the scenes in Soaspec for REST).
 
`RestClient.get 'localhost:14000/houses'`{{execute}}

You'll notice a `RestClient::Response` object is returned. Store the request in a variable called `response`: 

`response = RestClient.get 'localhost:14000/houses'`{{execute}}

Now call methods on it to see the different parts of it.

* Scroll through methods on response object `response.public_methods`{{execute}} 
(Type `q`{{execute}} to exit interactive scroller)
* See response body `response.body`{{execute}}
* See response HTTP status code `response.code`{{execute}}
* See response headers `response.headers`{{execute}}
* See time it took for response `response.duration`{{execute}}

Have a look at your first terminal to see the calls that were made against your test server