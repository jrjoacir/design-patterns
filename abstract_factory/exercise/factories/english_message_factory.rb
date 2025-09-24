class EnglishMessageFactory < MessageFactory
  def create_help_message
    HelpEnglishMessage.new
  end

  def create_greeting_message
    GreetingEnglishMessage.new
  end
end
