module MoviesHelper

  def genre_select_options
    Genre.find(:all).collect {|p| [ p.name, p.id ] } .unshift(["N/A", nil])
  end

  def rating_select_options
    (1..5).collect{|i| [i,i]}.unshift(["",nil])
  end
end
