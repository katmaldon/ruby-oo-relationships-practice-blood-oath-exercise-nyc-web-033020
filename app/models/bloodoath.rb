class Bloodoath

  attr_reader :cult, :follower
  @@all = []

  def initialize(cult, follower)
    @cult = cult
    @follower = follower
    @initiation_date = Time.now
    @@all << self
  end

  def self.all
    @@all
  end

end
