class BurguerSandwichBuilder
  include SandwichBuilder

  def initialize
    reset
  end

  def reset
    @ingredients = []
  end

  def build_brioche_bread
    ingredients << BriocheBread.new
  end

  def build_beef
    ingredients << Beef.new
  end

  def build_cheese
    ingredients << Cheese.new
  end

  def build_bacon
    ingredients << Bacon.new
  end

  def build_lettuce
    ingredients << Lettuce.new
  end

  def build_tomato
    ingredients << Tomato.new
  end

  def make
    puts "Making Burguer Sandwich...\n"
    burguer_sandwich = BurguerSandwich.new(ingredients)
    reset
    burguer_sandwich
  end

  private

  attr_accessor :ingredients
end
