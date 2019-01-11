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

  def get_logo_path
    @movie_data['production_companies'][0]['logo_path']
  end

  def get_origin_country
    @movie_data['production_companies'][0]['origin_country']
  end

  def get_iso_3166_1
    @movie_data['production_countries'][0]['iso_3166_1']
  end

  def get_production_country_name
    @movie_data['production_countries'][0]['name']
  end

  def get_original_language
    @movie_data['original_language']
  end

  def get_poster_path
    @movie_data['poster_path']
  end

  def get_release_date
    @movie_data["release_date"]
  end

  def get_home_page_link
    @movie_data["homepage"]
  end

  def is_home_page_valid_url
    get_home_page_link.include?('https://')|('http://')
  end
end
