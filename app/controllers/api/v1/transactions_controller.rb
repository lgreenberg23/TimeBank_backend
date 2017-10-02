class Api::V1::TransactionsController < ApplicationController
  
	def index
		# transactions = Transaction.all
		# transactions = [Transaction.first]
		byebug
		render json: transactions
	end

	def create
		token = params[:token]
		decoded_token = JWT.decode(token, "carpediem", true, { :algorithm => 'HS256' }) 
		user_id = decoded_token[0]["user_id"]
		user = User.find(user_id)
		post = Post.find(params[:post_id])

		hours = params[:hours]
		transaction = Transaction.new(post_id: post.id, contacter_id: user_id, hours: hours.to_i)
		if user.valid?
		  user.contacter = true
		end
		transaction.save

		render json: { transaction: transaction, user: user, post: post }
	end 

	def changeStatus
		token = params[:token]
		decoded_token = JWT.decode(token, "carpediem", true, { :algorithm => 'HS256' }) 
		user_id = decoded_token[0]["user_id"]
		user = User.find(user_id)
		# byebug
		transaction = Transaction.find(params[:transaction_id])
    	transaction.update(status: params[:status])   
 		# render json: transaction --> then on the front end in the reducer have to slice and do a replace

 		transactions = Transaction.all
    	render json: transactions

	end


	def userTransactions
		transactions = Transaction.where("contacter_id = ?", params[:user_id]) 
		render json: transactions
	end



	# def update
	 # 		token = params[:token]
		# decoded_token(token)
		# user_id = decoded_token[0]["user_id"]
		# user = User.find(user_id)
		# post = Post.find(params[:id])
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

	# def post_params
	# 	params.permit(:post, :token)
	# end

	# def find_user_params
	# 	params.permit(:id)
	# end


end
