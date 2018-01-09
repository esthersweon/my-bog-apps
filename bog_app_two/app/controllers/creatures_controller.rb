class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
    # @dog = Dog.new
    # @user = User.new
  end

  def create
    creature = Creature.new(creature_params)
    if creature.save
      redirect_to root_path
      # OR redirect_to creatures_path
      # OR redirect_to "/creatures"
    end
  end

  # URL: localhost:3000/creatures/5
  def show
    creature_id = params[:id] # 5

    # Get creature with ID 5
    @creature = Creature.find_by_id(creature_id)
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end
end










