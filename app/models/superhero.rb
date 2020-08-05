class Hero
  HEROES = []

  def self.all
    HEROES
  end

  def self.from_params(params)
    self.new(name: params[:name], power: params[:power], biography: params[:biography] )
  end

  attr_reader :name, :power, :biography, :team

  def initialize(name: ,power:, biography:, team: nil)
    @name = name
    @power = power
    @biography = biography
    @team = team
    self.save
  end

  def save
    HEROES << self
  end

end
