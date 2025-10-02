class ChickenSandwichBuilder
  include SandwichBuilder

  def initialize
    reset
  end

  def reset
    @ingredients = []
  end

  def build_french_bread
    ingredients << FrenchBread.new
  end

  def build_chicken_fillet
    ingredients << ChickenFillet.new
  end

  def build_lettuce
    ingredients << Lettuce.new
  end

  def build_tomato
    ingredients << Tomato.new
  end

  def make
    puts "Making Chicken Sandwich...\n"
    chicken_sandwich = ChickenSandwich.new(ingredients)
    reset
    chicken_sandwich
  end

  private

  attr_accessor :ingredients
end
