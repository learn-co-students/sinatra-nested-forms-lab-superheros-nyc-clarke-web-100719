
class Team
  # has_many :superheroes
  attr_accessor :name, :motto

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, motto)
    @name = name
    @motto = motto

    self.class.all << self
  end
end