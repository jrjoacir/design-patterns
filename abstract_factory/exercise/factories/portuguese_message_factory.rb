class PortugueseMessageFactory < MessageFactory
  def create_help_message
    HelpPortugueseMessage.new
  end

  def create_greeting_message
    GreetingPortugueseMessage.new
  end
end