get '/characters' do
	@characters = Character.all
	erb :'characters/index'
end

get '/characters/new' do
	erb :'characters/new'
end

post '/characters' do
	@character = Character.new(params[:character])
	if @character.save
		redirect '/'
	else
		redirect '/characters/new'
	end
end

get '/characters/:id' do
	@character = Character.find(params[:id])
	erb :'characters/show'
end