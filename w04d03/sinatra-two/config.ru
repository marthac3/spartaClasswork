require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/json'
require_relative './controllers/cakes_controller.rb'
require_relative './controllers/cakes_api_controller.rb'

use CakesApiController
run CakesController