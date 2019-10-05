module BotCommand
  class Intermediate < Base

    def intermediate

      send_message("Enter the ingridents of recipe")
       $s="intermediate"
    end
  end
end
