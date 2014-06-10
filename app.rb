
class GameRecommender < Sinatra::Base

  def initialize(peasantAdapter)
    super
    @peasantAdapter = peasantAdapter
  end

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
    usernameInfo = @peasantAdapter.getUsernameInfo(username)
		{
			username: username,
			other_things: usernameInfo
		}.to_json
	end
end
