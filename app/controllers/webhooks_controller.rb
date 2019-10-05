require 'bot_message_dispatcher'
class WebhooksController < ApplicationController

  def callback
    dispatcher.new(webhook).process
    render nothing: true, head: :ok
  end

  def webhook
    params['webhook']
  end

  def dispatcher
    BotMessageDispatcher
  end

  def from
    webhook[:message][:from]
  end

end
