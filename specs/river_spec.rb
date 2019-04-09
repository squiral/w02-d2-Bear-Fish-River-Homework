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

  def test_find_fish_by_name
    result = @river.find_fish_by_name("Clive")
    nil_result = @river.find_fish_by_name("Ramsey")
    assert_equal("Clive", result)
    assert_equal(nil, nil_result)
  end

  def test_river_empty
    @river.river_empty
    assert_equal(0, @river.count_fish)
  end

  def test_river_spawn
    @river.river_empty
    @river.spawn
    assert_equal(3, @river.count_fish)
  end

  # def test_fish_gone
  #   result = @river.fish_is_gone("Clive")
  #   assert_equal(nil, result)
  # end


end
