class Accommodation
  attr_reader :stars

  def initialize(stars = nil)
    @stars = stars
  end
end
