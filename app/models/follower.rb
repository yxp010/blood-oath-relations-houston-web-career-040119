
class Follower

  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @life_motto = life_motto
    @age = age
    @name = name

    @@all << self
  end

  def self.all

    @@all
  end

  def all_blood_oath
    BloodOath.all.select {|blood_oath| blood_oath.follower == self}
  end

  def cults
    all_blood_oath.map {|blood_oath| blood_oath.cult}.uniq
  end

  def join_cult(cult)
    self.age >= cult.minimum_age ? BloodOath.new(self, follower) : (puts "Too young to join!")
  end

  def self.of_a_certain_age(age)
    @@all.select {|follower| follower.age >= age}
  end

  def fellow_cult_members
    @@all.select {|follower| follower.cults.sort_by(&:name) == self.cults.sort_by(&:name) && follower != self}.uniq
  end



end
