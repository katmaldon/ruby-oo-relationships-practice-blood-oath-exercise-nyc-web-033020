class Follower
  attr_reader :name, :age, :motto
  @@all = []

  def initialize(name, age, motto)
    @name = name
    @age = age
    @motto = motto
    @@all << self
  end

  def self.all
    @@all
  end

  def bloodoaths
    Bloodoath.all.select { |oath| oath.follower == self }
    #array of oath instances of follower
  end

  def cults
    cults = bloodoaths.map { |oath| oath.cult }.uniq
  end

  def join_cult(cult)
    Bloodoath.new(cult, self)
  end

  def self.of_a_certain_age(age)
    Follower.all.select { | follower | follower.age >= age }
  end



end
