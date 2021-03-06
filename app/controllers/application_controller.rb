class ApplicationController < Sinatra::Base
  require 'rack-flash'
  use Rack::Flash
  enable :sessions
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }
 
  get '/' do
    erb :index
  end
end