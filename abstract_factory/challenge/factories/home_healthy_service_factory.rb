class HomeHealthyServiceFactory < HealthyServiceFactory
  def create_appointment(service_type, specialty, date_time, local, note)
    HomeAppointment.new(service_type, patient, specialty, date_time, local, note)
  end

  def create_invoice(value, payment_method)
    HomeInvoice.new(patient, value, payment_method)
  end
end