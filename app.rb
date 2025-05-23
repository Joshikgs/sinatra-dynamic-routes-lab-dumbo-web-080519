require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = (params[:number].to_i * params[:number].to_i).to_s
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] * params[:number].to_i
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == "add"
      (num1 + num2).to_s
    elsif params[:operation] == "subtract"
      (num1 - num2).to_s
    elsif params[:operation] == "multiply"
      (num1 * num2).to_s
    elsif params[:operation] == "divide"
      (num1 / num2).to_s
    else
      "Unable to perform this operation"
    end
  end
end