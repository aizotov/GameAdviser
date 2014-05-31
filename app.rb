class GameRecommender < Sinatra::Base
	get '/' do
		content_type 'html'
		erb :index
	end

	get '/user_info' do
		content_type :json
		{
			username: 'username@domain.com',
			other_things: 'other things go here'
		}.to_json
	end
end
