require_relative './appointment.rb'
require_relative './patient.rb'

#has many Appointments

#has many appointments.Patients

class Doctor
attr_accessor :name
@@all = []

     def initialize (name)
          @name = name
          self.class.all << self
     end

     def appointments
          appt = Appointment.all.select do |appt|
               appt.doctor == self
          end
          appt
     end

     def patients
          appointments.collect{|appt| appt.patient}
     end

     def new_appointment(date, patient)
          Appointment.new(date, patient, self)
     end

     def self.all
          @@all
     end


end
