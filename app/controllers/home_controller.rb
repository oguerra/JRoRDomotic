class HomeController < ApplicationController
  before_filter :authenticate_user!
  layout 'home'
  def index
  end
end
