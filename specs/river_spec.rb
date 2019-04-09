require("minitest/autorun")
require("minitest/rg")
require("./river.rb")
require("./fish.rb")

class RiverTest < MiniTest::Test

  def setup
    paul = Fish.new("Paul")
    clive = Fish.new("Clive")
    gabrielle = Fish.new("Gabrielle")
    fishes = [paul, clive, gabrielle]
    @river = River.new("Danube", fishes)
  end

  def test_return_river_name
    assert_equal("Danube", @river.name)
  end

  def test_number_of_fish_in_river
    assert_equal(3, @river.count_fish)
  end


end
