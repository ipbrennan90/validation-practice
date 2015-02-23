class WelcomeController < ApplicationController
  def index
    redirect_to kids_path
  end
end
