class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.string :title
      t.date :release_date
      t.text :description
      t.string :imdb_link

      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end
