require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :'/root'
    end

    get '/new' do 
      erb :'/pirates/new'
    end

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      @ships = params[:pirate][:ships]
  
      @ships.each{|ship| Ship.new(ship)}
      @ship = Ship.all

      erb :'pirates/show'
    end

  end
end

class Ship
  attr_reader :name, :type, :booty

  @@all = []

  def initialize(ship)
    @name = ship[:name]
    @type = ship[:type]
    @booty = ship[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

end

class Pirate
  attr_reader :name, :weight, :height, :ships
  
  @@all = []

  def initialize(pirate)
    @name = pirate[:name]
    @weight = pirate[:weight]
    @height = pirate[:height]
    @ships = pirate[:ships]
    @@all << self
  end

  def self.all
    @@all
  end

end