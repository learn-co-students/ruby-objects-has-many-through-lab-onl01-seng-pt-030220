#The Doctor model:
class Doctor
#1 The Doctor class needs a class variable @@all that begins as an empty array.
attr_accessor :name
@@all =[]
#2 The Doctor class needs a class method .all that lists each doctor in the class variable.
#3 A doctor should be initialized with a name and be saved in the @@all array.

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
#4 The Doctor class needs an instance method, #new_appointment, that takes in a an instance
#of the Patient class and a date, and creates a new Appointment. That Appointment should know
#that it belongs to the doctor

  # def new_appointment(date,patient)
  #   Appointment.new(date,patient,self)
  # end

  def new_appointment(patient, date)
     Appointment.new(date, patient, self)
   end

#5 The Doctor class needs an instance method, #appointments, that iterates through all
#Appointments and finds those belonging to this doctor.

  # def appointments
  #     Appointment.all.select do |appointment|
  #     appointment.doctor == self
  #     end
  #
  # end

  def appointments
   Appointment.all.select { |appointment| appointment.doctor == self }
 end


#6 The Doctor class needs an instance method, #patients, that iterates over that
#doctor's Appointments and collects the patient that belongs to each Appointments.

# def patients
#    appointments.map(&:patient)
#  end

  def patients
    appointments.map do |appointment|
    appointment.patient
  end
end

end
