class HotdogSandwich < Sandwich
  ALLOWED_INGREDIENTS = [ HotdogBread, Sausage, Pea, Corn, PotatoPuree, ShoestringPotato ]

  private

  def validate_ingredient(ingredient)
    raise 'Invalid ingredient' unless ALLOWED_INGREDIENTS.include?(ingredient.class)
  end
end
