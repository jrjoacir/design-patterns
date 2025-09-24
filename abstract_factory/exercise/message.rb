class Message
  include Messages

  def initialize(language)
    @language = language
  end

  def message
    raise 'Not implemented yet'
  end

  private

  attr_reader :language

  def type_messages
    raise 'Not implemented yet'
  end
end
