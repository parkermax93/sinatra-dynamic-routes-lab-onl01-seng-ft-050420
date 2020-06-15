require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @reverse = params[:name].reverse
    "#{@reverse}"
  end
  
  get "/square/:number" do 
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end
  
  get "/say/:number/:phrase" do 
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase}\n" * @number 
  end

end