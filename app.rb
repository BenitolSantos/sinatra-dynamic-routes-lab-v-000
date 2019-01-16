require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    #a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.
    @user_name = params[:name]
    @user_name.reverse!
  end

  get '/square/:number' do
    #a dynamic route at get '/square/:number' that accepts a number and returns the square of that number.
    200 #expecting an int for status code to be returned, 200
    @number = params[:number].to_i
    @square = (@number ** 2)
    @square.to_s #Expecting a string
  end

  get '/say/:number/:phrase' do
    #a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a string the number of times given
    200
    @number = params[:number]
    @phrase = params[:phrase]
    @phrase * @number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).
    200
    @sentence = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    200
    case params[:operation]
      #switch statment
    when "add"
      @answer = params[:number1].to_i + params[:number2].to_i
      @answer.to_s
    when "subtract"
      @answer = params[:number1].to_i - params[:number2].to_i
      @answer.to_s
    when "multiply"
      @answer = params[:number1].to_i * params[:number2].to_i
      @answer.to_s
    when "divide"
      @answer = params[:number1].to_i / params[:number2].to_i
      @answer.to_s
    end
  end
end
