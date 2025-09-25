class SiteHealthyServiceFactory < HealthyServiceFactory
  def create_appointment(service_type, specialty, date_time, local, note)
    SiteAppointment.new(service_type, patient, specialty, date_time, local, note)
  end

  def create_invoice(value, payment_method)
    SiteInvoice.new(patient, value, payment_method)
  end
end