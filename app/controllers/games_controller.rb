class GamesController < ApplicationController
  before_action :authenticate_user!

  FOLDER = "#{Rails.root}/examples/ghostly_towers"
  CONFIG = Fik::Configuration.new(FOLDER).build

  def create
    actor = Fik::Models::Actor.new("name" => "Bob", "starting_room" => "kitchen", "id" => current_user.id)
    world = Fik::World.new(rooms: CONFIG["rooms"], items: CONFIG["items"])
    game = Fik::Game.new(world, actor)
    game_state = Game.create!(state: game)
    redirect_to game_url(game_state)
  end
  
  def show
    @command = Command.new
  end
end