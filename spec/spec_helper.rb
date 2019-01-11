require 'rspec'
require 'dotenv'
require 'json'
require 'httparty'

require_relative '../lib/movies'
Dotenv.load('.env')

RSpec.configure do |configure|
  configure.formatter = :documentation
end
