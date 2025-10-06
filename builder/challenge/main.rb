require_relative '../challenge/accommodation.rb'
require_relative '../challenge/accommodations/hostel.rb'
require_relative '../challenge/accommodations/hotel.rb'

require_relative '../challenge/insurance.rb'
require_relative '../challenge/insurances/comprehensive_insurance.rb'
require_relative '../challenge/insurances/medical_insurance.rb'
require_relative '../challenge/insurances/travel_insurance.rb'
require_relative '../challenge/insurances/trip_cancellation_insurance.rb'

require_relative '../challenge/meal_plan.rb'
require_relative '../challenge/meal_plans/all_inclusive.rb'
require_relative '../challenge/meal_plans/bed_and_breakfast.rb'
require_relative '../challenge/meal_plans/full_board.rb'
require_relative '../challenge/meal_plans/half_board.rb'

require_relative '../challenge/transport.rb'
require_relative '../challenge/transports/bus.rb'
require_relative '../challenge/transports/plane.rb'
require_relative '../challenge/transports/train.rb'

require_relative '../challenge/trip.rb'
require_relative '../challenge/trips/city_tour.rb'

require_relative '../challenge/package.rb'
require_relative '../challenge/builders/accommodation_builder.rb'
require_relative '../challenge/builders/insurance_builder.rb'
require_relative '../challenge/builders/meal_plan_builder.rb'
require_relative '../challenge/builders/transport_builder.rb'
require_relative '../challenge/builders/trip_builder.rb'
require_relative '../challenge/package_builder.rb'

require_relative '../challenge/builders/economic_package_builder.rb'
require_relative '../challenge/builders/lux_package_builder.rb'
require_relative '../challenge/builders/personalized_package_builder.rb'

require_relative '../challenge/travel_agent.rb'

class Main
  def make_economic_package
    economic_package_builder = EconomicPackageBuilder.new
    TravelAgent.new(economic_package_builder).make_economic_package
    economic_package_builder.make
  end

  def make_lux_package
    lux_package_builder = LuxPackageBuilder.new
    TravelAgent.new(lux_package_builder).make_lux_package
    lux_package_builder.make
  end
end

puts economic_package = Main.new.make_economic_package
puts economic_package.to_h
puts economic_package.to_s
puts

puts lux_package = Main.new.make_lux_package
puts lux_package.to_h
puts

personalized_package_builder = PersonalizedPackageBuilder.new
TravelAgent.new(personalized_package_builder).make_personalized_package(
  transport_type: :plane,
  meal_plan_type: :half_board,
  insurance_type: :medical,
  trip_type: :city_tour,
  accommodation_type: :hotel,
  accommodation_stars: 4
)
puts personalized_package = personalized_package_builder.make
puts personalized_package.to_h
puts