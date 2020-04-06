class Appointment

  attr_accessor :date, :patient, :doctor
  @@all = []

  def initialize(patient, date, doctor)
    @patient = patient
    @date = date
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