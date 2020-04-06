class Doctor

    def self.all
        @@all
    end 

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end 

    def appointments
        Appointment.all.select {|apt| apt.doctor == self}
    end 

    def new_appointment(patient, date)
        Appointment.new(patient,date,self)
    end 
 
    def patients
        appointments.map {|apt| apt.patient}
      end
end 