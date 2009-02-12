require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # Replace this with your real tests.

  def setup
    Movie.new(:title=>'aaaaaaa', :description=>'saasdfasdfas').save!
    Movie.new(:title=>'bbbbbbb', :description=>'qwerqwerqwerqwerfas').save!
  end

  test "text search on movies" do
    assert_equal 1, Movie.find_by_search_text('aa').size
    assert_equal 1, Movie.find_by_search_text('bbb').size
    assert_equal 2, Movie.find_by_search_text('fas').size
    assert_equal 0, Movie.find_by_search_text('dean is awesome').size
  end
end
