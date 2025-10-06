class LuxPackageBuilder
  include PackageBuilder

  def initialize
    reset
  end

  def reset
    @items = {}
  end

  def build_plane_transport
    items.merge!(transport: Plane.new)
  end

  def build_five_stars_hotel
    items.merge!(accommodation: Hotel.new(5))
  end

  def build_all_inclusive_meal_plan
    raise 'Add an accommodation before choose a meal plan' unless accommodation

    items.merge!(meal_plan: AllInclusive.new)
  end

  def build_travel_insurance
    raise 'Add a transport before choose a travel insurance' unless transport

    items.merge!(insurance: TravelInsurance.new)
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