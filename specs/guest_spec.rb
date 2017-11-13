require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Catriona", 5, "Shake it off")
    @guest2 = Guest.new("Pete", 20, "25 or 6 to 4")
    @song1 = Song.new("Shake it off", "Taylor Swift")
    @room1 = Room.new("Poptastic", 2)
  end


  def test_guest_has_name
    assert_equal("Catriona", @guest1.name)
  end

  def test_guest_has_wallet
    assert_equal(5, @guest1.wallet)
  end

  def test_guest_has_entry_fee__yes
    assert_equal(true, @guest2.guest_has_entry_fee?(@room1))
  end

  def test_guest_has_entry_fee__no
    assert_equal(false, @guest1.guest_has_entry_fee?(@room1))
  end

  def test_guest_pay_for_room__sufficient_funds
    @guest2.pay_for_room(@room1)
    assert_equal(10, @guest2.wallet)
  end

  def test_guest_has_favourite_song
    assert_equal("Shake it off", @guest1.favourite_song)
  end

  def test_guest_hears_favourite_song
    @room1.add_songs(@song1)
    assert_equal("Yasssssss, this is my jam!", @guest1.hears_favourite_song(@room1))
  end

end
