class Appointment

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :date, :patient, :doctor

  def initialize(date, patient, doctor)
    @date = date  #.strtime("%A, %m %d")
    @patient = patient
    @doctor = doctor
    @@all << self
  end
end
