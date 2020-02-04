class Doctor
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

    # The Doctor class needs an instance method, #appointments, 
    # that iterates through all Appointments and finds those belonging to this doctor.

    def appointments
        Appointment.all.select do |appt|
            appt.doctor
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        Patient.all.map do |patient|
            patient
        end
    end
end