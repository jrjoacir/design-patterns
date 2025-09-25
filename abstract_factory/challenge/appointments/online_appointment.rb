class OnlineAppointment < Appointment
  CONFIG = {
    'Saúde Ativa App' => {
      service_types: ['Consulta de rotina', 'Retorno'],
      specialties: [:cardiology, :pediatrics, :neurology]
    },
    'GoldenCross Portal' => {
      service_types: ['Dicas de saúde', 'Primeiros Socorros'],
      specialties: [:cardiology, :pediatrics, :gynecology]
    },
    'Cuidando Bem Portal Online' => {
      service_types: ['Tratamento'],
      specialties: [:psychology, :psychiatry, :nutrition]
    }
  }

  private

  def validate_local!
    raise 'Local is invalid' unless available_online_services.include?(local)
  end

  def validate_service_type!
    raise 'Service type is invalid' unless CONFIG.dig(local, :service_types).include?(service_type)
  end

  def validate_specialty!
    raise 'Specialty is invalid' unless CONFIG.dig(local, :specialties).include?(specialty)
  end

  def available_online_services
    @available_online_services ||= CONFIG.keys
  end
end
