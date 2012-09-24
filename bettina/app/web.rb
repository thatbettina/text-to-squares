$: << 'lib'

require 'sinatra'
require 'erb'
require 'application'
require 'picture'
require 'square'

get '/' do
  "
  <h1>Text to squares</h1>
  <p>Please input a string:</p>
  <form method='post'>
  <textarea name='input'></textarea>
  <input type='submit'>
  </form>
  "
end

post '/' do
  Application.new(params[:input]).render
end