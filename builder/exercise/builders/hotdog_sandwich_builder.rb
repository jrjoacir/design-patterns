class HotdogSandwichBuilder
  include SandwichBuilder

  def initialize
    reset
  end

  def reset
    @ingredients = []
  end

  def build_hotdog_bread
    ingredients << HotdogBread.new
  end

  def build_sausage
    ingredients << Sausage.new
  end

  def build_pea
    ingredients << Pea.new
  end

  def build_corn
    ingredients << Corn.new
  end

  def build_potato_puree
    ingredients << PotatoPuree.new
  end

  def build_shoestring_potato
    ingredients << ShoestringPotato.new
  end

  def make
    puts "Making Hotdog Sandwich...\n"
    hotdog_sandwich = HotdogSandwich.new(ingredients)
    reset
    hotdog_sandwich
  end

  private

  attr_accessor :ingredients
end
