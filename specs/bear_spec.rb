require("minitest/autorun")
require("minitest/rg")
require("./river.rb")
require("./fish.rb")
require("./bear.rb")

class BearTest < MiniTest::Test

  def setup
    clive = Fish.new("Clive")
    ken = Fish.new("Ken")
    gloria = Fish.new("Gloria")
    fishes = [clive, ken, gloria]
    @river = River.new("Nile", fishes)
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_return_bear_name
    assert_equal("Yogi", @bear.name())
  end

  def test_belly_count
    assert_equal(0, @bear.belly_count())
  end

  def test_eat_fish
    @bear.hunt_from(@river)
    assert_equal(1, @bear.belly_count())
    assert_equal(nil, @river.find_fish_by_name("Clive"))
  end

  def test_roar
    assert_equal("Roar!", @bear.roar)
  end



end
