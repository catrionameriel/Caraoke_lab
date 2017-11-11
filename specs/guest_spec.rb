require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Catriona", 5)
  end


  def test_guest_has_name
    assert_equal("Catriona", @guest1.name)
  end

  def test_guest_has_wallet
    assert_equal(5, @guest1.wallet)
  end

end
