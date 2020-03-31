class Appointment

    attr_accessor :date, :doctor, :patient

    @@all = []

    def self.all
        @@all
    end

    def initialize(date, patient, doctor)
        @date, @patient, @doctor = date, patient, doctor
        @@all << self
    end

end