#The Appointment model:

#The Appointment class needs a class variable @@all that begins as an empty array.
#The Appointment class needs a class method .all that lists each Appointment in the class variable.
#An Appointment should be initialized with a date
#(as a string, like "Monday, August 1st"), a patient, and a doctor.
#The Appointment should be saved in the @@all array.

class Appointment

  attr_accessor :date, :doctor, :patient

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

end
