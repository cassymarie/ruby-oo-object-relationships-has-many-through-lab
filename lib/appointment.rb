require_relative './doctor.rb'
require_relative './patient.rb'
# Appointment belongs to a Patient

# Appointment belongs to a Doctor

class Appointment
attr_accessor :date, :patient, :doctor
@@all = []

     def initialize (date, patient, doctor)
          @date = date
          @patient = patient
          @doctor = doctor
          self.class.all << self
     end

     def self.all
          @@all
     end
end