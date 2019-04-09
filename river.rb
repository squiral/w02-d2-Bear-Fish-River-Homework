class River

  attr_accessor :name, :fishes

  def initialize(name, fish)
    @name = name
    @fishes = fish
  end

  def count_fish
    @fishes.count
  end

  def find_fish_by_name(fish_name)
    for fish in @fishes
      if fish.name == fish_name
        return fish.name
      end
    end

    return nil

  end

  def river_empty
    @fishes.clear
  end

  def spawn
    @fishes += ["Calumn", "Catherine", "Mindy"]
  end

  # def fish_is_gone(fish)
  #   index = @fishes.index(fish)
  #   @fishes.slice!(index)
  # end



end
