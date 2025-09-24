#representa arquivo arquivo
module Messages
  GREETING_MESSAGES = {
    hello: {
      pt_br: 'Olá! Seja bem-vindo ao seu assistente virtual.',
      us: 'Hello! Welcome to your virtual assistant.'
    },
    good_morning: {
      pt_br: 'Bom dia! Estou aqui para ajudar no que precisar.',
      us: 'Good morning! I’m here to help you with anything.'
    },
    hi: {
      pt_br: 'Oi! Que bom ter você por aqui.',
      us: 'Hi there! Great to have you here.'
    }
  }
  
  HELP_MESSAGES = {
    about_day: {
      pt_br: 'Você pode me perguntar sobre horários, lembretes ou clima.',
      us: 'You can ask me about schedules, reminders, or the weather.'
    },
    need_something: {
      pt_br: "Precisa de algo? Experimente dizer: 'Quais são minhas tarefas de hoje?'",
      us: "Need something? Try saying: 'What are my tasks for today?'"
    },
    i_can_help_you: {
      pt_br: 'Eu posso te ajudar com informações rápidas e lembretes importantes.',
      us: 'I can help you with quick info and important reminders.'
    }
  }

  MESSAGES = {
    greeting_messages: GREETING_MESSAGES,
    help_messages: HELP_MESSAGES
  }
end
