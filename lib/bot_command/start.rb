module BotCommand
  class Start < Base

    def start
      send_message("Hello! Enter your name")
      $s="start"
    end
  end
end
