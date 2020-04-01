class Appointment
   attr_accessor :name,:patient,:doctor
   @@all=[]
   def initialize(date,patient,doctor)
     @date,@patient,@doctor = date,patient,doctor
     @@all << self
   end

   def self.all
      @@all
   end

   #def patient

   #end

end
