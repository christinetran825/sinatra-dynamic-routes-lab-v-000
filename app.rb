require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase*@num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @message = params[:word1]+params[:word2]+params[:word3]+params[:word4]+params[:word5]
    "#{@message.split(" ")}."
  end

  get '/:operation/:number1/:number2' do

  end

end
