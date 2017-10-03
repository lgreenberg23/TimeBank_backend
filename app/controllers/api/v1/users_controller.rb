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
      render json: current_user
   end

   def updateHours
      yourHours = 0
      theirHours = 0

      token = params[:token]
      decoded_token = JWT.decode(token, "carpediem", true, { :algorithm => 'HS256' }) 
      user_id = decoded_token[0]["user_id"]
      user1 = User.find(user_id)
      user2 = User.find(params[:other_user_id])

      # if you received help with something, 
      # subtract the hours spent from your total hours and add to theirs
      if params[:type] == 'Offer' 
         yourHours = user1.hours_banked.to_i - (params[:hours].to_i)
         theirHours = user2.hours_banked.to_i + params[:hours].to_i

      else #you took someone up on a request, meaning you gave them help
        # so add to your hours and subtract from theirs
         yourHours = user1.hours_banked.to_i + params[:hours].to_i
         theirHours = user2.hours_banked.to_i - (params[:hours].to_i)
      end

      # reset hours in the database
      user1.update(hours_banked: yourHours)
      user2.update(hours_banked: theirHours)

      users = User.all
      render json: users

   end

   def show
    user = User.find(params[:id])
    render json: user
   end


   end
