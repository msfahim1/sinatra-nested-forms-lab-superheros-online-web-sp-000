class Team

  TEAMS = []

  def self.all
    TEAMS
  end

  def self.from_params(params)
    self.new(name: params[:name], motto: params[:motto], heroes: params[:heroes])
  end

  attr_reader :name, :motto, :heroes

  def initialize(name: , motto:, heroes: [])
    @name = name
    @motto = motto
    @heroes = heroes
    self.save
  end

  def save
    TEAMS << self
  end
end
