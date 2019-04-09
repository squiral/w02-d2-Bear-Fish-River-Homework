require("minitest/autorun")
require("minitest/rg")
require("./river.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Danube")
  end

  def test_return_river_name
    assert_equal("Danube", @river.name)
  end


end
