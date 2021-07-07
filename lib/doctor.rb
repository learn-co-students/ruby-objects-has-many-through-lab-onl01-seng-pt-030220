require 'pry'

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
        Appointment.new(date,patient,self)
    end 
 
    def patients
        #binding.pry
        appointments.map {|apt| apt.patient}
      end
end 