require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      params[:team][:heroes].map! do |m_data|
        Hero.from_params(m_data)
      end
      @team = Team.from_params(params[:team])
      erb :team
    end
end
