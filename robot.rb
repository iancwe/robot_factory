class Robot

@@all_robots = []

attr_reader :name

  def initialize(name = 'AB123')
    @name = sort_by { rand }
  end

  def reset
    @r1 = 0
    @r2 = 0
  end

  def random_name
    alphabet = ('A'..'Z').to_a
    random_index = rand(alphabet.count)
    alphabet[random_index]
  end

end
