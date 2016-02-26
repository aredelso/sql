class WelcomeController < ApplicationController
  def register
    if params.has_key?(:user_name) && !params[:user_name].strip.empty?
      user_name = params[:user_name].strip
      # Save user to database
      user = User.new
      user.name = user_name
      user.save
      # Store user ID in session
      session[:user_id] = user.id.to_s
      # TODO: change this to redirect to game
      redirect_to '/game/play'
    else
      render 'register'
    end
  end
end
