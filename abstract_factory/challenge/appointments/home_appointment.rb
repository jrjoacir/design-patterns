class HomeAppointment < Appointment
  CONFIG = {
    service_types: ['Tratamento'],
    specialties: [:physical_therapy]
  }

  private

  def validate_local!
    raise 'Local is invalid' if local.nil?
  end

  def validate_service_type!
    raise 'Service type is invalid' unless CONFIG[:service_types].include?(service_type)
  end

  def validate_specialty!
    raise 'Specialty is invalid' unless CONFIG[:specialties].include?(specialty)
  end
end
