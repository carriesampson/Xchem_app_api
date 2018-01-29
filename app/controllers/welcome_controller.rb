class WelcomeController < ApplicationController
  def index
    render json: { status: 200, message: "Xchem API" }
  end
end
