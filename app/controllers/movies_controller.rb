class MoviesController < ApplicationController

  # Invoke the set_movie method before any of these
  # actions/methods are invoked.
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

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
   #    @movie = Movie.find(params[:id])

    respond_to do |format|
      format.html  # go to the show view, show.html.erb
      format.json { render json: @movie}
    end
  end

  # GET /movies/new
  # Generate a HTML Form to create a movie.
  def new
    # Create an instance variable for the form_for helper
    @movie = Movie.new

    # by default we render app/views/movies/new.html.erb
  end

  # POST /movies
  def create
    # Create a new movie from the params hash
    # (Note the movies_params is a method from below)
    @movie = Movie.new(movie_params)

    respond_to do |format| # Select HTML or JSON representation.

      if @movie.save  # Will return true if saved in DB.

        # save succeeded! Send a HTTP Redirect to the /movies/:id
        # where :id is the id of the movie just saved, ex: /movies/4.
        format.html { redirect_to movie_path(@movie.id), notice: 'Movie created' }

        # save succeeded! Send a HTTP status of 201 Created in the Response
        format.json { render :show, status: :created, location: @movie }

      else
        # save failed! show the form again.
        format.html {render :new}

        # save failed! show the json representation of the song errors.
        # Send a HTTP status of 422 Uprocessable Entity in the Response
        format.json {render json: @song.errors, status: :unprocessable_enitity }
      end
    end
  end

  # GET /movies/:id/edit
  def edit
    # /movies/2/edit it params[:id] will be 2
    # Find the column in the movies table that has
    # the id of 2
    # Create a Movie model using this row data.
    # @movie = Movie.find(params[:id])
  end

  # PATH /movies/:id
  def update

    # Find the movie to update/edit
    # @movie = Movie.find(params[:id])

    respond_to do |format|

      # update the movie from the params sent via the HTML form
      if @movie.update(movie_params) # update return true if update worked.
        # Success, now show the movie updated
        format.html { redirect_to movie_path(@movie.id), notice: "Successfully updated movie"}
#        format.html { redirect_to "/movies/3", notice: "Successfully updated movie"}
        format.json { render :show, status: :ok, location: movie_path(@movie)}
      else
        # Update failed!!!
        format.html { render :edit } # show the edit again
        format.json { render json: @movie.errors, status: :unprocessable_entity}
      end # end if

    end # end respond_to
  end # end of the update action

  # DELETE /movies/:id
  def destroy
    # Find the movie in the movies table using the id
    # passed in via the path.
    # @movie = Movie.find(params[:id])

    # Delete the row from the movies table.
    # using ActiveRecord#destroy method
    @movie.destroy


    respond_to do |format|
      # Show all the movies, index action
      format.html { redirect_to movies_url, notice: "You deleted a Movie"}
      format.json { head :no_content}  # do nothing as a response.
    end
  end

  private

  # Gets the movie by id from the DB and set the @movie
  # instance variable.
  def set_movie
    @movie = Movie.find(params[:id])
  end

  # Enforces strong parameter. Limit what attributes/columns can be set in the
  # movies table.
  def movie_params
     # require(:movie) - params hash MUST have a key with the symbol :movie
     # permit(...) - hash value for movie must have keys, :name, :desc, ...
    params.require(:movie).permit(:name, :desc, :rating, :released_year, :length)
  end

end
