class Chef
  def initialize(sandwich_builder)
    @sandwich_builder = sandwich_builder
  end

  def make_simple_burger
    sandwich_builder.build_brioche_bread
    sandwich_builder.build_beef
  end

  def make_salad_burguer
    sandwich_builder.build_brioche_bread
    sandwich_builder.build_beef
    sandwich_builder.build_lettuce
    sandwich_builder.build_tomato
  end

  def make_cheese_burguer
    sandwich_builder.build_brioche_bread
    sandwich_builder.build_beef
    sandwich_builder.build_cheese
  end

  def make_cheese_bacon_burguer
    sandwich_builder.build_brioche_bread
    sandwich_builder.build_beef
    sandwich_builder.build_cheese
    sandwich_builder.build_bacon
  end

  def make_double_cheese_burguer
    sandwich_builder.build_brioche_bread
    sandwich_builder.build_beef
    sandwich_builder.build_beef
    sandwich_builder.build_cheese
  end

  def make_double_cheese_bacon_burguer
    sandwich_builder.build_brioche_bread
    sandwich_builder.build_beef
    sandwich_builder.build_beef
    sandwich_builder.build_cheese
    sandwich_builder.build_bacon
  end

  def make_simple_chicken
    sandwich_builder.build_french_bread
    sandwich_builder.build_chicken_fillet
  end

  def make_salad_chicken
    sandwich_builder.build_french_bread
    sandwich_builder.build_chicken_fillet
    sandwich_builder.build_lettuce
    sandwich_builder.build_tomato
  end

  def make_double_salad_chicken
    sandwich_builder.build_french_bread
    sandwich_builder.build_chicken_fillet
    sandwich_builder.build_chicken_fillet
    sandwich_builder.build_lettuce
    sandwich_builder.build_tomato
  end

  def make_complete_hotdog
    sandwich_builder.build_hotdog_bread
    sandwich_builder.build_sausage
    sandwich_builder.build_potato_puree
    sandwich_builder.build_shoestring_potato
    sandwich_builder.build_pea
    sandwich_builder.build_corn
  end

  private

  attr_accessor :sandwich_builder
end
