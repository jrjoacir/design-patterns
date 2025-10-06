class Package
  TRANSPORT_WITH_INSURANCE = [Bus, Plane]

  def initialize(items)
    @accommodation = items[:accommodation]
    @insurance = items[:insurance]
    @meal_plan = items[:meal_plan]
    @transport = items[:transport]
    @trips = items[:trips]
    validate!
  end

  def to_h
    {
      accommodation: accommodation,
      insurance: insurance,
      meal_plan: meal_plan,
      transport: transport,
      trips: trips
    }
  end

  private

  attr_accessor :accommodation, :insurance, :meal_plan, :transport, :trips

  def validate!
    raise 'Invalid package' unless transport || accommodation
    validate_meal_plan!
    validate_trips!
    validate_insurance!
  end

  def validate_meal_plan!
    return unless meal_plan
    raise 'Invalid meal plan' unless accommodation
  end

  def validate_trips!
    return if trips.size.zero?
    raise 'Invalid trips' unless transport
  end

  def validate_insurance!
    return unless insurance
    raise 'Invalid insurance' unless TRANSPORT_WITH_INSURANCE.include?(transport.class)
  end
end