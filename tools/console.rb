require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("kevin", "Houston", 2008, "asdfasdfasdfasdf")
follower1 = Follower.new("A", 20, "ASDFASWEFWFE")
blood_oath1 = BloodOath.new(cult1, follower1)

cult2 = Cult.new("Josue", "Houston", 2010, "asdfasdfasdfasdf")
follower2 = Follower.new("B", 30, "ASDFASWEFWFE")
follower3 = Follower.new("C", 19, "ASDFASWEFWFE")
follower4 = Follower.new("D", 50, "ASDFASWEFWFE")
follower5 = Follower.new("E", 32, "ASDFASWEFWFE")
cult3 = Cult.new("ZZZ", "Houston", 2008, "asdfasdfasdfasdf")
cult4 = Cult.new("DDD", "New York", 1999, "asdfasdfasdfasdf")
cult5 = Cult.new("EEE", "Woodlands", 2018, "asdfasdfasdfasdf")
follower111 = Follower.new("PAPA", 80, "ASDFASWEFWFE")
blood_oath71 = BloodOath.new(cult1, follower111)
blood_oath72 = BloodOath.new(cult2, follower111)
blood_oath72 = BloodOath.new(cult1, follower111)
blood_oath72 = BloodOath.new(cult2, follower111)

blood_oath2 = BloodOath.new(cult2, follower1)
blood_oath3 = BloodOath.new(cult2, follower2)
blood_oath10 = BloodOath.new(cult1, follower2)
blood_oath4 = BloodOath.new(cult3, follower3)
blood_oath5 = BloodOath.new(cult4, follower4)
blood_oath6 = BloodOath.new(cult4, follower5)
blood_oath7 = BloodOath.new(cult5, follower5)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
