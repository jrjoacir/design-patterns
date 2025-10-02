require_relative '../exercise/ingredient.rb'
require_relative '../exercise/ingredients/bacon.rb'
require_relative '../exercise/ingredients/beef.rb'
require_relative '../exercise/ingredients/brioche_bread.rb'
require_relative '../exercise/ingredients/cheese.rb'
require_relative '../exercise/ingredients/chicken_fillet.rb'
require_relative '../exercise/ingredients/corn.rb'
require_relative '../exercise/ingredients/french_bread.rb'
require_relative '../exercise/ingredients/hotdog_bread.rb'
require_relative '../exercise/ingredients/lettuce.rb'
require_relative '../exercise/ingredients/pea.rb'
require_relative '../exercise/ingredients/potato_puree.rb'
require_relative '../exercise/ingredients/sausage.rb'
require_relative '../exercise/ingredients/shoestring_potato.rb'
require_relative '../exercise/ingredients/tomato.rb'

require_relative '../exercise/sandwich.rb'
require_relative '../exercise/sandwiches/burguer_sandwich.rb'
require_relative '../exercise/sandwiches/chicken_sandwich.rb'
require_relative '../exercise/sandwiches/hotdog_sandwich.rb'

require_relative '../exercise/sandwich_builder.rb'
require_relative '../exercise/builders/burguer_sandwich_builder.rb'
require_relative '../exercise/builders/chicken_sandwich_builder.rb'
require_relative '../exercise/builders/hotdog_sandwich_builder.rb'

require_relative '../exercise/chef.rb'

class Main
  def make_simple_chicken
    chicken_sandwich_builder = ChickenSandwichBuilder.new
    Chef.new(chicken_sandwich_builder).make_simple_chicken
    chicken_sandwich_builder.make
  end

  def make_cheese_bacon_burguer
    burguer_sandwich_builder = BurguerSandwichBuilder.new
    Chef.new(burguer_sandwich_builder).make_cheese_burguer
    burguer_sandwich_builder.make
  end

  def make_complete_hotdog
    hotdog_sandwich_builder = HotdogSandwichBuilder.new
    Chef.new(hotdog_sandwich_builder).make_complete_hotdog
    hotdog_sandwich_builder.make
  end
end

main = Main.new
puts
chicken_sandwich = main.make_simple_chicken
puts "Made Chicken Sandwich: #{chicken_sandwich.to_s}"
puts

burguer_sandwich = main.make_cheese_bacon_burguer
puts "Made Burguer Sandwich: #{burguer_sandwich.to_s}"
puts

hotdog_sandwich = main.make_complete_hotdog
puts "Made Hotdog Sandwich: #{hotdog_sandwich.to_s}"
puts
