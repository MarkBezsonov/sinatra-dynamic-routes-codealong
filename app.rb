require_relative 'config/environment'

class App < Sinatra::Base
  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    @number_1 = params[:num1].to_i
    @number_2 = params[:num2].to_i
    "#{@number_1*@number_2}"
  end
end