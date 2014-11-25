class HabitacionSecundariaController < ApplicationController

  layout 'habitaciones'
  before_filter :authenticate_user!

  def index
  end
end
