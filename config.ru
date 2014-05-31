require 'sinatra'
require 'json'
require 'thin'
require 'sass'
require 'sass/plugin/rack'
require './app.rb'
require 'json'

run GameRecommender
