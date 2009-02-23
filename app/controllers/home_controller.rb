class HomeController < ApplicationController
  def index
    @genres = Genre.find(:all)
    @movies = Movie.find(:all)
  end
end
