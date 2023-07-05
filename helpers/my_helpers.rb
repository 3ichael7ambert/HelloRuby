# app.rb
require 'sinatra'
require_relative 'helpers/my_helpers'

helpers MyHelpers

get '/' do
  @name = format_name('john')
  erb :index
end
