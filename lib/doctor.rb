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

  def appointments
    Appointment.all.select do |object|
      object.doctor == self
    end
  end

  def new_appointment(patient,date)
    Appointment.new(patient,self,date)
  end

  def patients
    Appointment.all.collect do |object|
      object.patient
    end
  end


end
