class Appointment

  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = "Monday, August 1st"
    @patient = patient
    @doctor = doctor
    @@all << self
    save
  end

  def self.all
    @@all
  end
  
  def save
   @@all << self
  end
end