class Appointment
  attr_reader :service_type, :patient, :specialty, :date_time, :local, :note

  def initialize(service_type, patient, specialty, date_time, local, note)
    @service_type = service_type
    @patient = patient
    @specialty = specialty
    @date_time = date_time
    @local = local
    @note = note
    validate!
  end

  private

  def validate!
    validate_date_time!
    validate_local!
    validate_service_type!
    validate_specialty!
  end

  def validate_date_time!
    raise 'Invalid date time!' unless date_time.is_a?(DateTime) && date_time > DateTime.now
  end

  def validate_local!
    raise 'Not implemented!'
  end

  def validate_service_type!
    raise 'Not implemented!'
  end

  def validate_specialty!
    raise 'Not implemented!'
  end
end
