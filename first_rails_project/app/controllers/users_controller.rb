class UsersController < ApplicationController
  # Controllers are ALWAYS plural
  # Boot up server with the command: bundle exec rails server or s

  def index
    render plain: "I'm in the index action!"
  end

  # params method that returns a hash or all params available

  # render json: automatically calls the to_json method
  def create
    render json: params
  end

  def show
    render json: params
  end


end