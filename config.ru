require 'sinatra'
require 'json'
require 'thin'
require 'sass'
require 'sass/plugin/rack'
require './app.rb'
require './PeasantAdapter.rb'


@peasant = PeasantAdapter.create(:v1, "localhost:8888")
         
run GameRecommender.new(@peasant)
