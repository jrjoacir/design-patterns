class ChickenSandwich < Sandwich
  ALLOWED_INGREDIENTS = [ FrenchBread, ChickenFillet, Lettuce, Tomato ]

  private

  def validate_ingredient(ingredient)
    raise 'Invalid ingredient' unless ALLOWED_INGREDIENTS.include?(ingredient.class)
  end
end
