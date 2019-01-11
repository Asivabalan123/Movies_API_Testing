# movies_api
### SOM (Service Object Model)
A service object model is used to test the movies API. The SOM is used to define complex actions, it also helps take out the logic from other areas of the MVC files.s

Before using any service:
This project requires a number of gems to be installed, which are included in the gemfile for convenience. Please run 'bundle' and they will be installed for you.

You will also need an API key, which should not be shared online, and has therefore been hidden. You can get an API key by creating an account at 'https://developers.themoviedb.org/3/getting-started/introduction'.

Following this, please create a file named '.env' in the main project directory. This file should include your api key, in the format "OPENWEATHER_API_KEY=000000000", where 000000000 is replaced with your API key.

Then simply run 'rspec' to run the test
## Movies services
This service checks the information of movies from the movie API.
The movies_data file was created to help the tests in the spec folder to work. Different methods for each was created.

HTTParty gem was also required to be able to make the get request to get information from the API

JSON gem was required as JSON data was parsed with JSON GEM into a hash, and then extracted the relevant information.

##The Spec
For the Spec folder, we created a movies_data_spec file which holds all the different tests we have created.
