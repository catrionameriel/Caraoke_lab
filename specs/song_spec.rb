require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Heart of Glass", "Blondie")
    @song2 = Song.new("Shake it off", "Taylor Swift")
  end


  def test_song_has_a_title
    assert_equal("Heart of Glass", @song1.title)
  end

  def test_song_has_artist
    assert_equal("Taylor Swift", @song2.artist)
  end


end
