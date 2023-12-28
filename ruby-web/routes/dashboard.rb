get '/dashboard' do
  redirect to '/login' unless session[:username]

  @user = session[:username]
  erb :"dashboard/index"
end
