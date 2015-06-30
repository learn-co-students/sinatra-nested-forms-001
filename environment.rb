ENV['SINATRA_ENV'] ||= "development"

require 'bundler'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'sinatra/base'
require 'sinatra/reloader'

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/sinatra_pirates#{ENV['SINATRA_ENV']}.sqlite"
)
require_all 'app'
