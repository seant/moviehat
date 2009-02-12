class Movie < ActiveRecord::Base
  belongs_to :genre

  def genre_name

    if genre.nil?
      return "N/A"
    else
      return genre.name
    end
  end

  def self.find_by_search_text(text)
    return find(:all, :conditions => ["title like ? or description like ?", like(text), like(text)])

  end

  private
  def self.like(str)
    return "%#{str}%"
  end
end
