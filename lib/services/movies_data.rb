require 'yaml'
require 'json'
require 'httparty'


class MovieService
  include HTTParty
  attr_accessor :movies_data


  def get_movie(api_key)
    @movie_data = JSON.parse(self.class.get("https://api.themoviedb.org/3/movie/550?api_key=#{api_key}").body)
  end

  def get_id
    @movie_data['genres'][0]['id']
  end

  def get_budget
    @movie_data['budget']
  end

  def get_genre_name
    @movie_data['genres'][0]['name']
  end

  def get_adult
    @movie_data['adult']
  end

  def get_backdrop_path
    @movie_data['backdrop_path']
  end

  def get_imdb_id
    @movie_data['imdb_id']
  end

  def get_original_title
    @movie_data['original_title']
  end

  def get_overview
    @movie_data['overview']
  end

  def get_popularity
    @movie_data['popularity']
  end

  def get_id_production
    @movie_data['production_companies'][0]['id']
  end

  def get_name
    @movie_data['production_companies'][0]['name']
  end

  def get_origin_country
    @movie_data['production_companies'][0]['origin_country']
  end 



end





# test = MovieService.new
# puts test.movies_data
