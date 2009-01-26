class Movie < ActiveRecord::Base
  belongs_to :genre

  def genre_name

    if genre.nil?
      return "N/A"
    else
      return genre.name
    end
  end
end
