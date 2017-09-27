class Api::V1::UsersController < ApplicationController
  # before_action :authorized, only: [:me]
  
  # def index
  #   @users = User.all
  #   render json: @users
  # end

  def create
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    if @user.save
      payload = { user_id: @user.id }
      render json: { user: @user, jwt: issue_token(payload) }
      ## send some message for success
    else
      render json: { errors: @user.errors.messages }, status: :bad_request
      ## send some error message
    end
  end

  def me
    # byebug
    render json: current_user
  end


  # def show
  #   posts = current_user.posts
  #   render json: current_user
  # end

  # def posts
  #   posts = current_user.posts
  #   render json: posts
  # end



end
