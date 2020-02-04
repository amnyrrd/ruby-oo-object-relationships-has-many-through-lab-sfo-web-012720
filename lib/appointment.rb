class Appointment
    attr_accessor :date, :doctor

    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        save
    end

    def patient=(patient)
        @patient
    end

    def patient
        @patient
        # binding.pry
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end