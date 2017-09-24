module Fik
  class Notifier
    def initialize(world)
      @world = world
    end
    
    def notify(notification)
      notification.recipients.each do |id|
        ActionCable.server.broadcast "game_alerts_channel_user_#{id}", :message => notification.message
      end
    end
  end
end