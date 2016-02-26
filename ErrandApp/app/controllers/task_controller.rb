class TaskController < ApplicationController
  def add
    if params.has_key?(:errand_name) && !params[:errand_name].strip.empty?
      errand = params[:errand_name].strip
      # save task to database
      new_errand = Errand.new
      new_errand.title = errand
      new_errand.save
      # store task id in session
      session[:errand_id] = new_errand.id.to_s
      # display the task that was added
      render text: new_errand.id.to_s + " has been added."
    else
      render 'add'
    end
  end
end
