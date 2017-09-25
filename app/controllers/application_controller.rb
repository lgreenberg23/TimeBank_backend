class ApplicationController < ActionController::API
	def issue_token(payload)
	   JWT.encode(payload, "carpediem")
	 end


	 def decoded_token(token)
	   begin
	     JWT.decode(token, "carpediem")
	   rescue JWT::DecodeError
	     []
	   end
	 end

	 def token

	   if bearer_token = request.headers["Authorization"]
	     jwt_token = bearer_token.split(' ')[1]
	   else
	     # no return
	   end

	 end

	 def current_user
	   decoded_hash = decoded_token(token)
	   if !decoded_hash.empty?
	     user_id = decoded_hash[0]["user_id"]
	     user = User.find(user_id)
	   else
	   	# 'Something went wrong!'
	   end
 	end
end
