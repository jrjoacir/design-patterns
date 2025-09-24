require_relative '../../abstract_factory/exercise/messages.rb'
require_relative '../../abstract_factory/exercise/message.rb'
require_relative '../../abstract_factory/exercise/messages/greeting_message.rb'
require_relative '../../abstract_factory/exercise/messages/help_message.rb'
require_relative '../../abstract_factory/exercise/messages/greeting/greeting_english_message.rb'
require_relative '../../abstract_factory/exercise/messages/greeting/greeting_portuguese_message.rb'
require_relative '../../abstract_factory/exercise/messages/help/help_english_message.rb'
require_relative '../../abstract_factory/exercise/messages/help/help_portuguese_message.rb'

require_relative '../../abstract_factory/exercise/message_factory.rb'
require_relative '../../abstract_factory/exercise/factories/english_message_factory.rb'
require_relative '../../abstract_factory/exercise/factories/portuguese_message_factory.rb'

require_relative '../../abstract_factory/exercise/application.rb'

class Main
  class << self
    def default_message
      Application.new.message
    end

    def english_message
      Application.new({ language: 'us' }).message
    end
  end
end

puts
default_message = Main.default_message
puts default_message.greeting_message
puts default_message.help_message
puts

english_message = Main.english_message
puts english_message.greeting_message
puts english_message.help_message
puts
