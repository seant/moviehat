module MoviesHelper

  def genre_select_options
    Genre.find(:all).collect {|p| [ p.name, p.id ] } .unshift(["N/A", nil])
  end

end
