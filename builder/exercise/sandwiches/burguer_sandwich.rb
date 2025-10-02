class BurguerSandwich < Sandwich
  ALLOWED_INGREDIENTS = [ BriocheBread, Beef, Cheese, Bacon, Lettuce, Tomato ]

  private

  def validate_ingredient(ingredient)
    raise 'Invalid ingredient' unless ALLOWED_INGREDIENTS.include?(ingredient.class)
  end
end
