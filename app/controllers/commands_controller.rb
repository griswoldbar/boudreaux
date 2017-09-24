class CommandsController < ApplicationController
  def run
    game = Game.find(params[:command][:game_id])
    state = Game.first.state
    interface = Fik::Interfaces::Web.new(state)
    message = interface.run(params[:command][:command])
    game.update_attribute(:state, state)
    render json: {
      message: message
    }
  end
end