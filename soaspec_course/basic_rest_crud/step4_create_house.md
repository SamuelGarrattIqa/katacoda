Up until now, the list of houses has proven quite boring, just returning an empty list. 
Now you will use the `HouseService` class to create a house.

# Create some houses

To create a house you need to send a JSON payload with the request parameters. 

To create a JSON structure, a good way is to first create the desired format in a Ruby `Hash`/`Array` and then
use `JSON.generate` to convert it to JSON.

* First require the `json` library. `require 'JSON'`{{execute}}
* Create the hash with the initial payload for a house (just a name).
`house_hash = { name: 'New house' }`{{execute}}
* Convert the hash to a JSON string `json = JSON.generate house_hash`{{execute}} 
* Send this payload in an HTTP Post `id = HouseService.post(payload: json).response.body`{{execute}} You'll
notice this returned an id. This a unique id for the house created

Using Soaspec you can do the JSON conversion directly with the `body` parameter.
`id2 = HouseService.post(body: { name: '2nd house' }).response.body`{{execute}}

Create a house with lots of rooms.
`mansion_id = HouseService.post(body: { name: 'Mansion', rooms: 20 }).response.body`{{execute}}

# Get houses created
A suburl can passed to the `get` call to retrieve a specific house

Perform a get for each house created
* `HouseService.get(id).response.body`{{execute}}
* `HouseService.get(id2).response.body`{{execute}}
* `HouseService.get(mansion_id).response.body`{{execute}}
* Get all houses `puts HouseService.get.response.body`{{execute}}