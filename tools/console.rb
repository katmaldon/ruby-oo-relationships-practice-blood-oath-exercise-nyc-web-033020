require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sunflower = Follower.new("Sunflower",23, "Always Shinning when youre a sunflower!")
rose = Follower.new("Rose",45, "Hey, Im a flower too!")
silver = Follower.new("Silver", 28, "Live laugh love")

sudo = Cult.new("The Elders of Sudo", "The Root Forest", 1970, "Behold, we are Root")
greg = Cult.new("The Church of Greggory","Brooklyn", 2017, "We Bow Before Him")
justice = Cult.new("Seekers of Justice", "Moscow", 1919, "LOL Justice")

bo1 = Bloodoath.new(sudo, rose)
bo2 = Bloodoath.new(greg, silver)
bo3 = Bloodoath.new(greg, rose)
bo4 = Bloodoath.new(justice, sunflower)
bo5 = Bloodoath.new(justice, silver)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
