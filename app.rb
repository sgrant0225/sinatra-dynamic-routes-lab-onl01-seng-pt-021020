require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
   @user_name = params[:name].reverse
  end

  get '/square/:number' do 
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
     n = params[:number].to_i
     params[:phrase] * n
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
   n1 = params[:number1].to_i
   n2 = params[:number2].to_i
   if params[:operation] == "add"
    "#{n1 + n2}" 
    elsif params[:operation] == "subtract"
    "#{n2 - n1}"
     elsif params[:operation] == "multiply"
      "#{n1 * n2}"
      elsif params[:operation] == "divide"
       "#{n1/n2}"
   end
  end
end

#Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' 
#that accepts five words and returns a string 
#containing all five words 
#(i.e. word1 word2 word3 word4 word5).