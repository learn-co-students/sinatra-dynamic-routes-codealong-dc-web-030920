require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    @name = params[:name]
    "Goodbye, #{@name}."
  end

  get '/multiply/:num1/:num2' do
    @multiply1 = params[:num1].to_i
    @multiply2 = params[:num2].to_i
    "#{@multiply1 * @multiply2}"
  end

end