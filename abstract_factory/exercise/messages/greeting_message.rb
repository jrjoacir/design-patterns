class GreetingMessage < Message
  def message
    return unless greeting_messages && type_messages && language

    greeting_messages.dig(type_messages&.sample, language)
  end

  private

  def type_messages
    @type_messages ||= greeting_messages.keys
  end

  def greeting_messages
    @greeting_messages ||= MESSAGES[:greeting_messages]
  end
end
