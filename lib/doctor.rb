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

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select { |appointment| appointment.doctor == self}
    end

    def patients
        my_appointments = appointments
        my_patients = my_appointments.collect do |appointment|
            appointment.patient
        end
    end

end