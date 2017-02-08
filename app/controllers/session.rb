get '/login' do
	erb :"users/login"
end

post '/login' do 
	@user = User.find_by(username: params[:username])

	if @user && @user.authenticate(params[:password])
		session[:user_id] = @user.id
		redirect "/users/#{@user.id}"
	else
		@message = "Wrong username / password combination"
		erb :'users/login'
	end
end

get '/logout' do
	session[:user_id] = nil
	redirect '/'
end

get '/not_authorized' do
	erb :'not_authorized'
end	