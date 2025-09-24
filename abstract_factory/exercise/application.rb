class Application
  CONFIG = { language: 'pt-br' }
  attr_reader :config

  def initialize(config = CONFIG)
    @config = config
  end

  def message
    if language == 'pt-br'
      PortugueseMessageFactory.new
    elsif language == 'us'
      EnglishMessageFactory.new
    else
      raise 'Invalid language'
    end
  end

  private

  def language
    @language ||= config[:language]
  end
end