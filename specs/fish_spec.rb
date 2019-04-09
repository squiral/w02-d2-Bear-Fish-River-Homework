require("minitest/autorun")
require("minitest/rg")
require("./fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Clive")
  end

  def test_return_fish_name
    assert_equal("Clive", @fish.name)
  end

end
