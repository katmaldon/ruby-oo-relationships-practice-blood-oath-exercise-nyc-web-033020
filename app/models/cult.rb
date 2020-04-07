class Cult

  attr_reader :name, :location, :founding_year, :slogan
  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    Bloodoath.new(self, follower)
  end

  def bloodoath
    Bloodoath.all.select { |oath| oath.cult == self }
  end

  def cult_population
    bloodoath.length
  end

  def self.find_by_name(name)
    Cult.all.find { |cult| cult.name == name }
  end

  def self.find_by_location(location)
    Cult.all.select { |cult| cult.location == location }
  end

  def self.find_by_founding_year(year)
    Cult.all.select { |cult| cult.founding_year == year }
  end

  def average_age
    total_age = 0
    total_followers = self.cult_population
    Bloodoath.all.select do |inst|
      inst.cult == self
      total_age += inst.follower.age
    end
    total_age / total_followers * 1.0
  end

  def my_followers_mottos
    p bloodoath.map { |inst| inst.follower.motto }
  end

end


