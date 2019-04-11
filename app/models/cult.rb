
class Cult

  attr_accessor :name, :location, :founding_year, :slogan, :minimum_age

  @@all = []

  def initialize(name, location, founding_year, slogan, minimum_age = 0)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @minimum_age = minimum_age

    @@all << self
  end

  def self.all

    @@all
  end

  def all_blood_oath
    BloodOath.all.select {|blood_oath| blood_oath.cult == self}
  end

  def recruit_follower(follower)
    follower.age >= @minimum_age ? BloodOath.new(self, follower) : (puts "Too young to join!")
  end

  def cult_population
    all_blood_oath.map {|blood_oath| blood_oath.follower}.uniq.count
  end

  def self.find_by_name(name)
    @@all.select {|cult| cult.name == name}
  end

  def self.find_by_location(location)
    @@all.select {|cult| cult.location == location}
  end

  def self.find_by_founding_year(founding_year)
    @@all.select {|cult| cult.founding_year == founding_year}
  end




end
