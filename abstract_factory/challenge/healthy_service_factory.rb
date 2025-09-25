class HealthyServiceFactory
  attr_reader :patient

  def initialize(patient)
    @patient = patient
  end

  def create_appointment(service_type, specialty, date_time, local, note)
    raise 'Not implemented'
  end

  def create_invoice(value, payment_method)
    raise 'Not implemented'
  end
end