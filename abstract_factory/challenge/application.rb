class Application
  CLINIC_CONFIG = {
    type_local: :site,
    local: 'Clínica Saúde Mais – Sala 203',
    value: 150
  }

  TYPE_LOCAL_FACTORIES = {
    site: SiteHealthyServiceFactory,
    home: HomeHealthyServiceFactory,
    online: OnlineHealthyServiceFactory
  }

  attr_reader :patient, :service_type, :specialty, :date_time, :payment_method, :note

  def initialize(patient, service_type, specialty, date_time, payment_method, note)
    @patient = patient
    @service_type = service_type
    @specialty = specialty
    @date_time = date_time
    @payment_method = payment_method
    @note = note
  end

  def appointment
    @appointment ||= healthy_service.create_appointment(service_type, specialty, date_time, local, note)
  end

  def invoice
    @invoice ||= healthy_service.create_invoice(value, payment_method)
  end

  def report
    <<~REPORT
      - Patient: #{appointment.patient}
      
      Appointment:
        - Specialty: #{appointment.specialty}
        - Date time: #{appointment.date_time}
        - Local: #{appointment.local}
        - Note: #{appointment.note}
      
      Invoice:
        - Value: #{invoice.value}
        - Tax: #{invoice.tax}%
        - Total value: #{invoice.total_value}
        - Payment method: #{invoice.payment_method}
    REPORT
  end

  private

  def healthy_service
    @healthy_service ||= begin
      factory = TYPE_LOCAL_FACTORIES[type_local]
      raise "Invalid type local" unless factory

      factory.new(patient)
    end
  end

  def local
    @local ||= CLINIC_CONFIG[:local]
  end

  def value
    @value ||= CLINIC_CONFIG[:value]
  end

  def type_local
    @type_local ||= CLINIC_CONFIG[:type_local]
  end
end