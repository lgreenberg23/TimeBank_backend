class Api::V1::PostsController < ApplicationController
  before_action :authorized, only: [:me]
  
	def index #this is the home page
		@posts = Post.all
		render json: @posts
	end

	def create
		token = params[:token]
		decoded_token = JWT.decode(token, "carpediem", true, { :algorithm => 'HS256' }) 
		user_id = decoded_token[0]["user_id"]

		user = User.find(user_id)
		post = Post.new(post_params)
		if user.valid?
		  post.poster = user 
		  user.poster = true
		end
		post.save
		render json: post
	end 

	def show #not sure this is necessary - might do this through the user controller
		user = User.find(find_user_params[:user_id])
		posts = user.posts
		render json: posts
	end

	# def update
 #    comment = Comment.find_by(text: update_comment_params[:oldText])
 #    comment.update(text: update_comment_params[:input])
 #    breed = Breed.find_by(name: update_comment_params[:breed])
 #    comments = breed.comments
 #    render json: comments
 #  end

	def destroy
		post = Post.find(params[:id])
		# byebug
    	post.destroy
	   posts = Post.all
    	render json: posts
   end


	private

	def post_params
		params.require(:post).permit(:name, :category, :location, :offer, :request, :description, :expiration_date)
	end

	def find_user_params
		params.permit(:id)
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