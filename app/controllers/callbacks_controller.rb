class CallbacksController < Devise::OmniauthCallbacksController 
	
	def github

		@user = User.from_omniauth(request.env["omniauth.auth"]) 
		@user.save
		sign_in_and_redirect @user
	end 

	# def after_sign_in_path_for(resource) 
	# 	request.env['omniauth.origin'] || root_path 
	# end

end