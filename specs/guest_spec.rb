require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Catriona")
    @guest2 = Guest.new("Pete")
  end


  def test_guest_has_name
    assert_equal("Pete", @guest2.name)
  end

end
