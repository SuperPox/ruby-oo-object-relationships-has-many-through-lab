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

    def new_appointment(date, doctorinstance)
        Appointment.new(date, self, doctorinstance)
    end

    def appointments
        Appointment.all.select do |i|
            i.patient == self
        end
    end

    def doctors
        arr = []
        Appointment.all.select do |i|
            if i.patient == self
                arr << i.doctor
            end
        end
        return arr
    end
end

