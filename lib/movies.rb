require_relative 'services/movies_data'

class Movies

  def movies_data
    MovieService.new
  end


end
