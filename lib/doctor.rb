class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end
   
   def patients
     self.appointments.each {|appointment| appointment.patient}
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end



end