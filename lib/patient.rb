require_relative './appointment.rb'
require_relative './doctor.rb'

#has many Appointments

#Has many Appointments.Doctors
class Patient
attr_accessor :name, :doctor
@@all = []

     def initialize (name)
          @name = name
          self.class.all << self
     end
     
     def new_appointment(date, doctor)
          Appointment.new(date, self, doctor)
     end

     def appointments
          Appointment.all.select do |appt|
               appt.patient == self
          end
     end

     def doctors
          appointments.collect {|appt| appt.doctor}
     end

     def self.all
          @@all
     end


end