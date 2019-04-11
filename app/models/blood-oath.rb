class BloodOath

  attr_accessor :cult, :follower, :initiation_date

  @@all = []

  def initialize(cult, follower)
    @initiation_date = Time.now.strftime("%Y-%m-%d")
    @cult = cult
    @follower = follower

    @@all << self

  end

  def self.all

    @@all
  end

end
