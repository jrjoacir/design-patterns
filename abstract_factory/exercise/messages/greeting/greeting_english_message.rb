class GreetingEnglishMessage < GreetingMessage
  def initialize(language = :us)
    super(language)
  end
end