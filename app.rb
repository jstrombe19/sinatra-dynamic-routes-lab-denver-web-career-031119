require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number ** 2}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    repeated_phrase = []
    number.times do
      repeated_phrase << phrase
    end
    "#{repeated_phrase.join}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      result = num1 + num2
    when 'subtract'
      result = num1 - num2
    when 'multiply'
      result = num1 * num2
    when 'divide'
      result = num1 / num2
    end
    "#{result}"
  end 
end
