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

      params[:ship].each do |ship_key, ship_attributes|
        @pirate.ships.create(ship_attributes)
      end

      erb :'pirates/show'
    end

  end
end
