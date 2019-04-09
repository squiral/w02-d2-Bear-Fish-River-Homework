class River

  attr_reader :name, :fishes

  def initialize(name, fish)
    @name = name
    @fishes = fish
  end

  def count_fish
    @fishes.count
  end

  def fish_is_gone(fish)
    @fishes.delete(fish)
  end

end
