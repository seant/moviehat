class AddMovieGenreForeignKeys < ActiveRecord::Migration
  def self.up
    add_column(:movies, :genre_id, :integer)
  end

  def self.down
    remove_column(:movies, :genre_id)
  end
end
