class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  def patients
    appointments.map {|appointment| appointment.patient}
  end
  def self.all
    @@all
  end
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
end

# class Doctor
#   attr_reader :name, :appointment, :patient
#   @@all_doc = []
#   def initialize(name)
#     @name = name
#     @@all_doc << self
#   end
#   def self.all
#     @@all_doc
#   end
#   def new_appointment(patient, date)
#     Appointment.new(patient, self, date)
#   end
#   def appointments
#     Appointment.all.select do |appointment|
#       appointment.doctor == self
#     end
#   end
#   def patients
#     appointments.map do |appointment|
#       appointment.patients
#     end
#   end
# end

# class Doctor
#   attr_accessor :name
#   @@all = []
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#   def appointments
#     Appointment.all.select {|appointment| appointment.doctor == self}
#   end
#   def patients
#     appointments.map {|appointment| appointment.patient}
#   end
#   def self.all
#     @@all
#   end
#   def new_appointment(patient, date)
#     Appointment.new(patient, date, self)
#   end
# end