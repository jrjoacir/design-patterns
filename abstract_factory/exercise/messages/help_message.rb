class HelpMessage < Message
  def message
    return unless help_messages && type_messages && language

    help_messages.dig(type_messages&.sample, language)
  end

  private

  def type_messages
    @type_messages ||= help_messages.keys
  end

  def help_messages
    @help_messages ||= MESSAGES[:help_messages]
  end
end
