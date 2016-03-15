class MoviesController < ApplicationController

  # GET /movies
  def index
    @movies = Movie.all

    # by default this will render the view in the app/views/movies/index.html.erb file.
  end
end
