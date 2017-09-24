class GameAlertsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "game_alerts_channel_user_#{current_user.id}"
  end
end