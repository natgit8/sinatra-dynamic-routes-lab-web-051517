require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    phrase_count = params[:phrase].to_s
    (params[:number].to_i).times do
      phrase_count += "#{params[:phrase]}\n"
    end
    phrase_count
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      add = params[:number1].to_i + params[:number2].to_i
      "#{add}"
    elsif params[:operation] == "subtract"
      subtract = params[:number1].to_i - params[:number2].to_i
      "#{subtract}"
    elsif params[:operation] == "multiply"
      multiply = params[:number1].to_i * params[:number2].to_i
      "#{multiply}"
    elsif params[:operation] == "divide"
      divide = params[:number1].to_i / params[:number2].to_i
      "#{divide}"
    else
      "Unable to perform this operation"
    end
  end

end
