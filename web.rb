$: << 'lib'

require 'sinatra'
require 'application'
require 'picture'
require 'square'

get '/' do
  erb :get_form
end

post '/' do
  app = Application.new(params[:input])
  erb :template, :locals => { :rows => application.rows }
end
