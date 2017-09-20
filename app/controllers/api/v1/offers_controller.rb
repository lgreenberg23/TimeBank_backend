class Api::V1::UsersController < ApplicationController
  before_action :authorized, only: [:me]
  
  def index
    @offers = Offer.all
    render json: @offers
  end

	def create

		user = user.find(params[:user_id])
		offer = Offer.new(offer_params)
		if user.valid?
		  offer.user = user 
		end
		offer.save
		render json: offer

	end


  # def me
  #   render json: current_user
  # end

	private

	  def offer_params
	    params.require(:userInput).permit(:name )
	  end


end






# class Api::V1::CommentController < ApplicationController

#   def create
#     breed = Breed.find_by(name: comment_params[:breed])
#     comment = Comment.create(text: comment_params[:input], breed_id: breed.id)
#     render json: comment
#   end

#   def show
#     breed = Breed.find_by(name: find_dog_params[:id])
#     comments = breed.comments
#     render json: comments
#   end

#   def destroy
#     comment = Comment.find_by(text: delete_comment_params[:comment])
#     comment.destroy
#     breed = Breed.find_by(name: delete_comment_params[:dog])
#     comments = breed.comments
#     render json: comments
#   end

#   def update
#     comment = Comment.find_by(text: update_comment_params[:oldText])
#     comment.update(text: update_comment_params[:input])
#     breed = Breed.find_by(name: update_comment_params[:breed])
#     comments = breed.comments
#     render json: comments
#   end


#   private

#   def comment_params
#     params.require(:userInput).permit(:input, :breed)
#   end

#   def find_dog_params
#     params.permit(:id)
#   end

#   def delete_comment_params
#     params.permit(:comment, :dog)
#   end

#   def update_comment_params
#     params.require(:userInput).permit(:input, :breed, :oldText)
#   end

# end