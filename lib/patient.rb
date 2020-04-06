class Patient
  #body of a patient instance
  attr_accessor :name, :appointment, :doctor
  @@all_appointment = []
  # Initialize with a name 
  def initialize(name)
    @name = name
    @appointment = appointment
    @doctor = doctor
    @@all_appointment << self
    save
  end
  # Knows all patients
  def self.all
    @@all_appointment
  end
  # returns all appointments associated with this Patient
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
    # Appointment.all.select {|appointment| appointment.doctor == self}
  end
  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end
  # giving a doctor and date, creates a new appointment belonging to that patient
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  def save
    @@all_appointment << self
  end
end