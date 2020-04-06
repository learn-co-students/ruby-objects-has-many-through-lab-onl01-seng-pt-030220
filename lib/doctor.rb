# require 'pry'
class Doctor
    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end
    # binding.pry

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end

    end

    def patients
        appointments.map do |appointment|
            appointment.patient
        end

    end


end