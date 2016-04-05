class ReviewsController < ApplicationController

  # invoke the set_movie method before all actions!
  before_action :set_movie

  def index
    @reviews = @movie.reviews
  end

  # GET /movies/:movie_id/reviews/:id
  def show
    @review = @movie.reviews.find(params[:id])
  end

  # GET /movies/:movie_id/review/new
  def new

    # We need an empty review object for the
    # form we are going to display to the user.
    @review = @movie.reviews.new
  end

  # POST /movies/:movie_id/reviews
  def create

    @review = @movie.reviews.new(review_params)

    if @review.save
      # Success, we've saved the review
      redirect_to movie_reviews_path(@movie), notice: 'Created Review'
    else
      # Oops, failed to create the review
      render :new
    end
  end

  private

  def set_movie
    # pull the movie id out of the URL
    # /movies/:movie_id/reviews
    @movie = Movie.find(params[:movie_id])
  end

  # Strong params for a review
  def review_params
    params.require(:review).permit(:content, :email)
  end
end
