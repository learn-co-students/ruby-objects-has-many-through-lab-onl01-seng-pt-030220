class Patient

    @@all = []

    def self.all 
        @@all
    end

    attr_accessor :name, :appointment, :doctor

    def initialize(name)
        @name = name
        @appointments = []
        @@all << self
    end 

    def new_appointment(doctor, date)
        Appointment.new(self, date, doctor)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end 

    def doctors
        appointments.collect {|appointment| appointment.doctor}
    end 


end