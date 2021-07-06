require 'pry'
class Doctor
  attr_accessor :name
  
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    appointments.map do |appts|
      appts.patient
    end
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

end

# dr = Doctor.new("Me")
# dr.new_appointment(date, patient)