require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

      @ship1 = Ship.new(params[:ship]["0"][:name], params[:ship]["0"][:type], params[:ship]["0"][:booty])
      @ship2 = Ship.new(params[:ship]["1"][:name], params[:ship]["1"][:type], params[:ship]["1"][:booty])


      erb :'pirates/show'
    end

  end
end
