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

# class Appointment
#   attr_reader :patient, :doctor, :date
#   @@all = []
#   def initialize(patient ="", doctor = "", date = "")
#     @patient = patient
#     @doctor = doctor
#     @date = date
#     @@all << self
#   end
#   def self.all
#     @@all
#   end
#   def patients
#     self.patient
#   end
#   def doctors
#     self.doctor
#   end
# end


# class Appointment

#   attr_reader :patient, :doctor, :date

#   @@all = []

#   def initialize(patient ="", doctor = "", date = "")
#     @patient = patient
#     @doctor = doctor
#     @date = date
#     @@all << self
#   end

#   def self.all
#     @@all
#   end

#   def patients
#     self.patient
#   end

#   def doctors
#     self.doctor
#   end

# end