require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number_1  = params[:number1].to_i
    @number_2  = params[:number2].to_i

    case @operation
    when "add"
      "#{@number_1 + @number_2}"
    when "subtract"
      "#{@number_1 - @number_2}"
    when "divide"
      "#{@number_1 / @number_2}"
    when "multiply"
      "#{@number_1 * @number_2}"
    end
  end
end