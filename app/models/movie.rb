class Movie < ActiveRecord::Base
  belongs_to :genre
  acts_as_rated

  def genre_name
    if genre.nil?
      return "N/A"
    else
      return genre.name
    end
  end

  def rating_for_user=(value)
    rate value.to_i, User.find(1)
  end

  def rating_for_user
    puts ratings.find_by_rater_id(1).inspect
    ratings.find_by_rater_id(1).rating
  end
  
  def self.find_by_search_text(text)
    return find(:all, :conditions => ["title like ? or description like ?", like(text), like(text)])

  end

  private
  def self.like(str)
    return "%#{str}%"
  end
end
