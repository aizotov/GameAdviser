class GameRecommender < Sinatra::Base
	get '/' do
		content_type 'html'
		erb :index
	end

	get '/stylesheets/style.css' do
		scss :style, views: 'public/stylesheets'
	end

	get '/user_info' do
		content_type :json
		username = params['username'] || 'no username here'
		{
			username: username,
			other_things: 'other things go here'
		}.to_json
	end
end
