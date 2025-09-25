class SiteAppointment < Appointment
  CONFIG = {
    'Clínica Saúde Mais – Sala 203' => {
      service_types: ['Consulta de rotina', 'Retorno', 'Tratamento'],
      specialties: [:cardiology, :pediatrics, :neurology, :dermatology, :gynecology]
    },
    'Mais Saúde - Praia Grande' => {
      service_types: ['Consulta de rotina', 'Retorno'],
      specialties: [:cardiology, :pediatrics, :gynecology]
    },
    'Superação - Zona Sul' => {
      service_types: ['Tratamento'],
      specialties: [:psychology, :physical_therapy, :cardiology, :psychiatry]
    }
  }

  private

  def validate_local!
    raise 'Local is invalid' unless available_sites.include?(local)
  end

  def validate_service_type!
    raise 'Service type is invalid' unless CONFIG.dig(local, :service_types).include?(service_type)
  end

  def validate_specialty!
    raise 'Specialty is invalid' unless CONFIG.dig(local, :specialties).include?(specialty)
  end

  def available_sites
    @available_sites ||= CONFIG.keys
  end
end
