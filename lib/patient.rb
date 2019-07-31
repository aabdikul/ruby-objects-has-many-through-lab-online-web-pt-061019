class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor,name)
    Appointment.new(self,doctor,name)
  end

  def appointments
    Appointment.all.select do |object|
      object.patient == self
    end
  end

  def doctors
    Appointment.all.collect do |object|
      object.doctor
    end
  end

end
