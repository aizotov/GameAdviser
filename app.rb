class GameRecommender < Sinatra::Base
	get '/' do
		"Hello Sinatra!!!"
	end

	get '/test' do
		content_type 'html'
		erb :index
	end
end
