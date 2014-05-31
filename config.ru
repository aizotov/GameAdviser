require 'sinatra'
require 'json'
require 'thin'
require 'sass'
require 'sass/plugin/rack'
require './app.rb'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

run GameRecommender
