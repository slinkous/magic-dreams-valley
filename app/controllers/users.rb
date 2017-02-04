get '/users/new' do
	erb :'users/new'
end

post '/users' do
	@user = User.new(params[:user])

	if @user.save
		session[:user_id] = @user.user_id
		redirect '/'
	else
		erb :'users/new'
	end
	
end