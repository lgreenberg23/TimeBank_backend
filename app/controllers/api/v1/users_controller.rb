class Api::V1::UsersController < ApplicationController
  before_action :authorized, only: [:me]
  
  # def index
  #   @users = User.all
  #   render json: @users
  # end

  def create
    @user = User.new(name: params[:username], email: params[:email], password: params[:password])
    if @user.save
      payload = { user_id: @user.id }
      render json: { user: @user, jwt: issue_token(payload) }
      ## send some message for success
    else
      render json: { errors: @user.errors.messages }, status: :bad_request
      ## send some error message
    end
  end


  # def me
  #   render json: current_user
  # end




end
