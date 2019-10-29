require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        temp = params[:team][:members].map{|attrb| SuperHero.new(attrb)}
       @team = Team.new(name: params[:team][:name], motto: params[:team][:motto], members: temp)

       erb :team
    end

end
