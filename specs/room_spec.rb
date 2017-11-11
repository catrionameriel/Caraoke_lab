require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test

  def setup
    @guest1 = Guest.new("Catriona")
    @guest2 = Guest.new("Pete")
    @song1 = Song.new("Heart of Glass", "Blondie")
    @song2 = Song.new("Shake it off", "Taylor Swift")
    @room1 = Room.new("Poptastic")
  end

  def test_room_has_name
    assert_equal("Poptastic", @room1.room_name)
  end

  def test_has_guest_checked_in
    @room1.check_in_guest(@room1, @guest1)
    assert_equal(1, @room1.guests.count)
  end

  def test_has_guest_checked_out
    @room1.check_in_guest(@room1, @guest1)
    @room1.check_in_guest(@room1, @guest2)
    @room1.check_out_guest(@room1, @guest2)
    assert_equal(1, @room1.guests.count)
  end

  def test_does_room_have_songs
    @room1.add_songs(@room1, @song1)
    @room1.add_songs(@room1, @song2)
    assert_equal(2, @room1.songs.count)
  end

end
