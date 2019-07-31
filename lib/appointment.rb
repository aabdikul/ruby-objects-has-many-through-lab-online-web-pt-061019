class Appointment

  attr_accessor :name, :patient, :doctor

  @@all = []

  def initialize(patient, doctor, name)
    @name = name
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end
