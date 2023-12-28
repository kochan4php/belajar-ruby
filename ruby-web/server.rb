if $PROGRAM_NAME == __FILE__
  require 'sinatra'

  require_relative 'routes/index'
  require_relative 'config/session'

  # set template engine folder
  set :views, 'views'

  # set static folder
  set :public_folder, __dir__ + '/public'
end
