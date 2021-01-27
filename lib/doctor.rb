require 'pry'
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

    def new_appointment(date, patientinstance) #date: "Friday, January 32nd" ## instance + @name="Devin Townsend">
        Appointment.new(date, patientinstance, self)
        #binding.pry
    end

    def appointments
        Appointment.all.select do |i|
            i.doctor == self        
        end
    end

    def patients
        arr = []
        Appointment.all.select do |i|
            if i.doctor == self
                arr << i.patient
            end
        end
        return arr
    end
end

