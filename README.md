# movies_api
### SOM (Service Object Model)
A service object model is used to test the movies API. The SOM is used to define complex actions, it also helps take out the logic from other areas of the MVC files.s

## Movies services
This service checks the information of movies from the movie API.
The movies_data file was created to help the tests in the spec folder to work. Different methods for each was created.

HTTParty gem was also required to be able to make the get request to get information from the API i.e postcode.

JSON gem was required as JSON data was parsed with JSON GEM into a hash, and then extracted the relevant information.

##The Spec
For the Spec folder, we created a single_current_weather_spec file which holds all the different tests we have created.
