class Sandwich
  attr_reader :ingredients

  def initialize(ingredients = [])
    ingredients.each { |ingredient| validate_ingredient(ingredient) }
    @ingredients = ingredients
  end

  def add_ingredient(ingredient)
    validate_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def to_s
    ingredients.map(&:to_s)
  end

  private

  def validate_ingredient(ingredient)
    raise 'Not implemented!'
  end
end