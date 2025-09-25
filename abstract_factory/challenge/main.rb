require 'date'
require_relative '../../abstract_factory/challenge/appointment.rb'
require_relative '../../abstract_factory/challenge/appointments/site_appointment.rb'
require_relative '../../abstract_factory/challenge/appointments/online_appointment.rb'
require_relative '../../abstract_factory/challenge/appointments/home_appointment.rb'

require_relative '../../abstract_factory/challenge/invoice.rb'
require_relative '../../abstract_factory/challenge/invoices/site_invoice.rb'
require_relative '../../abstract_factory/challenge/invoices/online_invoice.rb'
require_relative '../../abstract_factory/challenge/invoices/home_invoice.rb'

require_relative '../../abstract_factory/challenge/healthy_service_factory.rb'
require_relative '../../abstract_factory/challenge/factories/site_healthy_service_factory.rb'
require_relative '../../abstract_factory/challenge/factories/online_healthy_service_factory.rb'
require_relative '../../abstract_factory/challenge/factories/home_healthy_service_factory.rb'

require_relative '../../abstract_factory/challenge/application.rb'

patient = 'Paciente'
service_type = 'Tratamento'
specialty = :cardiology
date_time = DateTime.parse('01/12/2025 12:00')
payment_method = :credit_card
note = 'Dificuldade de locomoção'

app = Application.new(patient, service_type, specialty, date_time, payment_method, note)
puts app.report
puts