class ReviewsController < ApplicationController

  # invoke the set_movie method before all actions!
  before_action :set_movie

  def index
    @reviews = @movie.reviews
  end

  private

  def set_movie
    # pull the movie id out of the URL
    # /movies/:movie_id/reviews
    @movie = Movie.find(params[:movie_id])
  end
end
