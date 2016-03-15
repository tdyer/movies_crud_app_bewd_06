class MoviesController < ApplicationController

  # GET /movies
  def index
    @movies = Movie.all

    respond_to do |format|
      format.html # goes to view
      format.json {render json: @movies}
    end
  end

  # GET /movies/1
  def show
    # Use the params hash contructed from the URL to get
    # the movie id
    @movie = Movie.find(params[:id])

    respond_to do |format|
      format.html  # go to the show view, show.html.erb
      format.json { render json: @movie}
    end
  end
end
