class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @belly = []
  end

  def belly_count
    @belly.count
  end

  def eat_fish(fish)
    @belly << fish
  end

  def hunt_from(river, fish_name)
    for fish in river.fishes()
      if fish.name == fish_name
        eat_fish(fish_name)
      end
    end

    river.fish_is_gone(fish_name)

  end



end
