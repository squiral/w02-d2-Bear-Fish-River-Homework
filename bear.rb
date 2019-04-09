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

  def eat_fish(river)
    @belly << river.fishes[0]
  end

  def hunt_from(river)
    eat_fish(river)
    river.fishes.delete_at(0)
  end

  def roar
    return "Roar!"
  end



end
