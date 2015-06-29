require './environment'

module FormsLab
  class App < Sinatra::Base
    register Sinatra::ActiveRecordExtension

    # code other routes/actions here

    get '/' do
      # "Welcome to the Nested Forms Lab! let's navigate to the '/new'"

      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.create(params[:pirate])

      @ship1 = Ship.create(params[:ship]["0"])
      @ship2 = Ship.create(params[:ship]["1"])

      # @pirate.ships << [ship1, ship2]

      erb :'pirates/show'
    end

  end
end
