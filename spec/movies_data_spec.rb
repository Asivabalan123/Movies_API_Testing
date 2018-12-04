describe Movies do

  attr_accessor :api_key

  before(:all) do
     @api_key = ENV['MOVIES_API_KEY']
     @movies_data = Movies.new.movies_data
     @movies_data.get_movie(@api_key)
     @current_movie = MovieService.new
   end

   it 'should return integer for each id for movie' do
     expect(@movies_data.get_id).to be_kind_of(Integer)
   end

   it 'should return integer for budget for movie' do
     expect(@movies_data.get_budget).to be_kind_of(Integer)
   end

   it 'should return genre name to be a string' do
     expect(@movies_data.get_genre_name).to be_kind_of(String)
   end

   it 'should return true or false for adult' do
     expect(@movies_data.get_adult).to eq(true).or eq(false)
   end

   it 'should return string for backdrop_path' do
     expect(@movies_data.get_backdrop_path).to be_kind_of(String)
   end

   it 'should return string for imdb_id' do
     expect(@movies_data.get_imdb_id).to be_kind_of(String)
   end

   it 'should return string for original_title' do
     expect(@movies_data.get_original_title).to be_kind_of(String)
   end

   it 'should return string for overview' do
     expect(@movies_data.get_overview).to be_kind_of(String)
   end

   it 'should return float for popularity' do
     expect(@movies_data.get_popularity).to be_kind_of(Float)
   end

   it 'should return integer for id for production company' do
     expect(@movies_data.get_id_production).to be_kind_of(Integer)
   end

   it 'should return string for name of production company' do
     expect(@movies_data.get_name).to be_kind_of(String)
   end

   it 'should return string for origin_country of production company' do
     expect(@movies_data.get_origin_country).to be_kind_of(String)
   end

   it 'should return production countries iso_3166_1 as string'

end
