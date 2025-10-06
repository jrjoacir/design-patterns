class TravelAgent
  TRANSPORT_TYPES = [ :bus, :plane, :train ]
  ACCOMMODATION_TYPES = [ :hotel, :hostel ]
  MEAL_PLANS = [ :all_inclusive, :bed_and_breakfast, :full_board, :half_board ]
  INSURANCE_TYPES = [ :comprehensive, :medical, :travel, :trip ]
  TRIP_TYPES = [ :city_tour ]

  def initialize(package_builder)
    @package_builder = package_builder
  end

  def make_economic_package
    package_builder.build_bus_transport
    package_builder.build_hostel_accommodation
    package_builder.build_city_tour_trip
  end

  def make_lux_package
    package_builder.build_plane_transport
    package_builder.build_five_stars_hotel
    package_builder.build_all_inclusive_meal_plan
    package_builder.build_travel_insurance
    package_builder.build_city_tour_trip
  end

  def make_personalized_package(
    transport_type: nil,
    meal_plan_type: nil,
    insurance_type: nil,
    trip_type: nil,
    accommodation_type: nil,
    accommodation_stars: nil
  )
    transport_type && build_transport(transport_type)
    accommodation_type && build_accommodation(accommodation_type, accommodation_stars)
    meal_plan_type && build_meal_plan(meal_plan_type)
    insurance_type && build_insurance(insurance_type)
    trip_type && build_trip(trip_type)
  end

  private

  attr_accessor :package_builder

  def build_transport(transport_type)
    raise 'Invalid transport type' unless TRANSPORT_TYPES.include?(transport_type)

    return package_builder.build_bus_transport if transport_type == :bus
    return package_builder.build_plane_transport if transport_type == :plane
    package_builder.build_train_transport if transport_type == :train
  end

  def build_accommodation(accommodation_type, stars = nil)
    raise 'Invalid accommodation type' unless ACCOMMODATION_TYPES.include?(accommodation_type)

    return build_hotel(stars) if accommodation_type == :hotel
    build_hostel if accommodation_type == :hostel
  end

  def build_hotel(stars)
    return package_builder.build_one_stars_hotel if stars == 1
    return package_builder.build_two_stars_hotel if stars == 2
    return package_builder.build_three_stars_hotel if stars == 3
    return package_builder.build_four_stars_hotel if stars == 4
    package_builder.build_five_stars_hotel if stars == 5
  end

  def build_hostel
    package_builder.build_hostel
  end

  def build_meal_plan(meal_plan_type)
    raise 'Invalid meal plan type' unless MEAL_PLANS.include?(meal_plan_type)

    return package_builder.build_all_inclusive_meal_plan if meal_plan_type == :all_inclusive
    return package_builder.build_bed_and_breakfast_meal_plan if meal_plan_type == :bed_and_breakfast
    return package_builder.build_full_board_meal_plan if meal_plan_type == :full_board
    package_builder.build_half_board_meal_plan if meal_plan_type == :half_board
  end

  def build_insurance(insurance_type)
    raise 'Invalid insurance type' unless INSURANCE_TYPES.include?(insurance_type)

    return package_builder.build_comprehensive_insurance if insurance_type == :comprehensive
    return package_builder.build_medical_insurance if insurance_type == :medical
    return package_builder.build_travel_insurance if insurance_type == :travel
    package_builder.build_trip_insurance if insurance_type == :trip
  end

  def build_trip(trip_type)
    raise 'Invalid trip type' unless TRIP_TYPES.include?(trip_type)

    package_builder.build_city_tour_trip if trip_type == :city_tour
  end
end
