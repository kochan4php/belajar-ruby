require_relative '../controllers/auth_controller'

auth_controller = AuthController.new

get '/login' do
  redirect to '/dashboard' if session[:username]
  erb :"auth/login"
end

post '/login' do
  user = auth_controller.login(params[:username], params[:password])
  if user
    session[:username] = user[:username]
    redirect to '/dashboard'
  else
    session[:message] = 'Invalid Username / Password'
    redirect '/login'
  end
end

post '/logout' do
  session.clear
  redirect '/login'
end
