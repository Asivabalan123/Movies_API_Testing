# Movies_API
### SOM (Service Object Model)

Before using any service:
This project requires a number of gems to be installed, which are included in the gemfile for convenience. Please run 'bundle' and they will be installed for you.

The following gems needs to be installed:
gem "rspec"
gem 'dotenv'
gem 'json'
gem 'httparty'

HTTParty gem was required to be able to make the get request to get information from the API

JSON gem was required as JSON data was parsed with JSON GEM into a hash, and then extracted the relevant information.

Dotenv gem is required as it loads variables from a .env file into ENV when the environment is bootstrapped.

Rspec gem is required to run the tests.

This API was tested to ensure that all the data is valid and tests will pass.

You will also need an API key, which should not be shared online, and has therefore been hidden. You can get an API key by creating an account at 'https://developers.themoviedb.org/3/getting-started/introduction'.

Following this, please create a file named '.env' in the main project directory. This file should include your api key, in the format "OPENWEATHER_API_KEY=000000000", where 000000000 is replaced with your API key.

To run the tests: Clone the repository, go into your Git Bash and into file where it is saved under and run simply run Rspec.
