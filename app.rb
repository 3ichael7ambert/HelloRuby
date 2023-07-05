# app.rb
require 'sinatra'
require 'sinatra/flash'

enable :sessions

# Set up a session secret (required for flash messages)
set :session_secret, 'super_secret_key'

# Home page route
get '/' do
  erb :base
end

# Contact page route
get '/contact' do
  erb :contact
end

# Contact form submission route
post '/contact' do
  # Process the form submission here
  flash[:notice] = "Thanks for contacting us!"
  redirect '/contact'
end
