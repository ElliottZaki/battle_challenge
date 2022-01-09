require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'

class Battle < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

enable :sessions

    get '/' do
        erb(:index)
    end
    
    get '/test' do
        'Testing infrastructure working!'
    end

    post '/names' do
        $player_1 = Player.new(params[:player_1])
        $player_2 = Player.new(params[:player_2])
        redirect '/play'
    end

    get '/play' do
        @player_1 = $player_1
        @player_2 = $player_2
        erb(:play)
    end

    get '/attack' do
        @player_1 = $player_1
        @player_2 = $player_2
        @player_1.attack(@player_2)
        erb(:attack)
    end

     

    run! if app_file == $0
end


