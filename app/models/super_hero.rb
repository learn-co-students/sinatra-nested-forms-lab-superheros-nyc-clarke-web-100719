
class SuperHero
  # belongs_to :team
  attr_accessor :name, :power, :biography

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, power, biography)
    @name = name
    @power = power
    @biography = biography

    self.class.all << self
  end
end