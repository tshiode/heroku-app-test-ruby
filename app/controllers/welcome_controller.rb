class WelcomeController < ApplicationController
  skip_forgery_protection

  # GET /welcome
  def index
    @messages = Message.all.order("created_at DESC")
  end

  def post
    Message.create(name: params[:name], content: params[:content])
    redirect_to '/'
  end

end
