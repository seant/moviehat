class HomeController < ApplicationController
  def index
    @genres = Genre.find(:all)
    @movies = Movie.sorted_by_rating[0..4]
  end
end
