require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        hero_arr = []
        h1_hash = {
            "name" => params[:member1_name],
            "power" => params[:member1_power],
            "bio" => params[:member1_bio]
        }
        h2_hash = {
            "name" => params[:member2_name],
            "power" => params[:member2_power],
            "bio" => params[:member2_bio]
        }
        h3_hash = {
            "name" => params[:member3_name],
            "power" => params[:member3_power],
            "bio" => params[:member3_bio]
        }
        hero_arr << h1_hash
        hero_arr << h2_hash
        hero_arr << h3_hash
        
        params[:team]["members"] = hero_arr

        @hero_team_name = params[:team][:name]
        @hero_team_motto = params[:team][:motto]
        @member_arr = params[:team]["members"]
        
        erb :team
    end

end
