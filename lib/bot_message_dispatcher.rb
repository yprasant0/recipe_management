class BotMessageDispatcher
  attr_reader :message

  def initialize(message)
    @message = message

  end

  def process
    @texted = @message[:message][:text]

    if @texted == "start"
      BotCommand::Start.new(message).start
    end
    if !@message.nil? && @texted.split.first.downcase == "name"
      a = @texted.slice! /^\S+\s+/
      $k = a
      BotCommand::Intermediate.new(message).intermediate

    end
    if !@message.nil? && @texted.split.first.downcase == "in"
      detail=Detail.new
      detail.name = $k
      detail.save
      @texted.slice! /^\S+\s+/
      detail.recipe = @texted
      detail.save
      detail.source = "chatbot"
      detail.save
      pp @texted
      pp $k
      BotCommand::Finish.new(message).finish
    end

  end

end
