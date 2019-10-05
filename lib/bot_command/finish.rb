module BotCommand
  class Finish < Base

    def finish
      send_message("start again by typing Start")
      $s="final"
    end
  end
end