require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


get '/' do
#creation of heroes
erb :super_hero
end 

post '/teams' do
    team_name = params[:team][:name]
    team_motto = params[:team][:motto] 
    @team = Team.new(team_name, team_motto)
    @superheroes = []
    params[:team][:heros].each do |attributes|
        hero_name = attributes[:name]
        hero_power = attributes[:power]
        hero_bio = attributes[:bio]
        @superheroes << Superhero.new(hero_name, hero_power, hero_bio)
    end 

    erb :team  
    

end 


end