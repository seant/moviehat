require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # Replace this with your real tests.

  def setup
    @movie1 = Movie.new(:title=>'aaaaaaa', :description=>'saasdfasdfas')
    @movie1.save!

    @movie2 = Movie.new(:title=>'bbbbbbb', :description=>'qwerqwerqwerqwerfas')
    @movie2.save!

    @user1 = User.new(:login=>'dean1',:email=>'dean1@dean.com',:password=>'password',:password_confirmation=>'password')
    @user1.save!

    @user2 = User.new(:login=>'dean2',:email=>'dean2@dean.com',:password=>'password',:password_confirmation=>'password')
    @user2.save!
  end

  test "text search on movies" do
    assert_equal 1, Movie.find_by_search_text('aa').size
    assert_equal 1, Movie.find_by_search_text('bbb').size
    assert_equal 2, Movie.find_by_search_text('fas').size
    assert_equal 0, Movie.find_by_search_text('dean is awesome').size
  end

  test "rate movies" do
    @movie1.rate 1, @user1
    @movie1.rate 3, @user2
    assert_equal 2, @movie1.rating_average

    @movie2.rate 3, @user1
    @movie2.rate 4, @user2
    rating = BigDecimal.new("3.5")
    assert_equal rating, @movie2.rating_average

  end
end
