require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Catriona", 5)
    @guest2 = Guest.new("Pete", 20)
    @room1 = Room.new("Poptastic", 2)
  end


  def test_guest_has_name
    assert_equal("Catriona", @guest1.name)
  end

  def test_guest_has_wallet
    assert_equal(5, @guest1.wallet)
  end

  def test_guest_pay_for_room__sufficient_funds
    @guest2.pay_for_room(@guest2, @room1)
    assert_equal(10, @guest2.wallet)
  end

end
