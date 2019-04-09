require("minitest/autorun")
require("minitest/rg")
require("./bear.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_return_bear_name
    assert_equal("Yogi", @bear.name)
  end

end
