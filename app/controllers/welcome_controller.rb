class WelcomeController < ApplicationController
  def index
  end
  def add_msg
    @msg = Message.create()
    ActionCable.server.broadcast('notification_channel', 'Msg Added')
  end
end
