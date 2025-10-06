class PersonalizedPackageBuilder
  include PackageBuilder

  def initialize
    reset
  end

  def reset
    @items = {}
  end

  def build_bus_transport
    items.merge!(transport: Bus.new)
  end

  def build_plane_transport
    items.merge!(transport: Plane.new)
  end

  def build_train_transport
    items.merge!(transport: Train.new)
  end

  def build_one_stars_hotel
    items.merge!(accommodation: Hotel.new(1))
  end

  def build_two_stars_hotel
    items.merge!(accommodation: Hotel.new(2))
  end

  def build_three_stars_hotel
    items.merge!(accommodation: Hotel.new(3))
  end

  def build_four_stars_hotel
    items.merge!(accommodation: Hotel.new(4))
  end

  def build_five_stars_hotel
    items.merge!(accommodation: Hotel.new(5))
  end

  def build_hostel
    items.merge!(accommodation: Hostel.new)
  end

  def build_all_inclusive_meal_plan
    raise 'Add an accommodation before choose a meal plan' unless accommodation

    items.merge!(meal_plan: AllInclusive.new)
  end

  def build_bed_and_breakfast_meal_plan
    raise 'Add an accommodation before choose a meal plan' unless accommodation

    items.merge!(meal_plan: BedAndBreakfast.new)
  end

  def build_full_board_meal_plan
    raise 'Add an accommodation before choose a meal plan' unless accommodation

    items.merge!(meal_plan: FullBoard.new)
  end

  def build_half_board_meal_plan
    raise 'Add an accommodation before choose a meal plan' unless accommodation

    items.merge!(meal_plan: HalfBoard.new)
  end

  def build_comprehensive_insurance
    raise 'Add a transport before choose a comprehensive insurance' unless transport

    items.merge!(insurance: ComprehensiveInsurance.new)
  end

  def build_medical_insurance
    raise 'Add a transport before choose a medical insurance' unless transport

    items.merge!(insurance: MedicalInsurance.new)
  end

  def build_travel_insurance
    raise 'Add a transport before choose a travel insurance' unless transport

    items.merge!(insurance: TravelInsurance.new)
  end

  def build_trip_insurance
    raise 'Add a transport before choose a trip cancellation insurance' unless transport

    items.merge!(insurance: TripCancellationInsurance.new)
  end

  def build_city_tour_trip
    raise 'Add a transport before choose a trip' unless transport

    items[:trips] ||= []
    items[:trips].push(CityTour.new)
  end

  def make
    raise 'Choose a transport or an accomodation before create a package' unless transport || accommodation

    package = Package.new(items)
    reset
    package
  end

  private

  attr_accessor :items

  def transport
    items[:transport]
  end

  def accommodation
    items[:accommodation]
  end
end