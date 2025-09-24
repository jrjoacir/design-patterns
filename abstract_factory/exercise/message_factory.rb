class MessageFactory
  def greeting_message
    @greeting ||= create_greeting_message.message
  end

  def help_message
    @help ||= create_help_message.message
  end

  def create_help_message
    raise 'Not implemented!'
  end

  def create_greeting_message
    raise 'Not implemented!'
  end
end