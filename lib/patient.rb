
class Patient

  attr_accessor :name, :appointment, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    save
  end

  def self.all
    @@all
  end
  #appointments, that iterates through the Appointments array and returns Appointments that belong to the patient.

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end
  
  def save
   @@all << self
  end

end