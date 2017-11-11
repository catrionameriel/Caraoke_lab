require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Catriona")
  end


  def test_guest_has_name
    assert_equal("Catriona", @guest1.name)
  end

  def test

end
