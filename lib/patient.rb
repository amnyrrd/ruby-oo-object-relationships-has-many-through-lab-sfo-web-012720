class Patient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
    
    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end
   
    # The Patient class needs an instance method, #appointments, that iterates through 
    # the Appointments array and returns Appointments that belong to the patient.
    
    def appointments
        Appointment.all.select do |appt| 
            appt.patient == self
            # binding.pry
        end
    end
    
    def doctors
        Doctor.all.map do |doctor|
            doctor
        end
    end
end

