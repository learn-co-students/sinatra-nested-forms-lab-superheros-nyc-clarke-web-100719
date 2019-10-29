require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @param = params
        erb :team
    end

    get '/super_hero' do
        erb :super_hero
    end
end
