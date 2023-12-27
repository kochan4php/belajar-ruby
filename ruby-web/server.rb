if $PROGRAM_NAME == __FILE__
  require 'sinatra'
  require 'sinatra/reloader'

  require_relative 'routes/index'

  # set template engine
  set :views, 'views'

  # set static folder
  set :public_folder, __dir__ + '/public'
end
