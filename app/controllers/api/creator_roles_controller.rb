class Api::CreatorRolesController < ApplicationController
    def get_all_players
      api_key = 'eeb9489d25mshece0af3a05356c5p19ff4djsn50c7693cf960'
      free_nba_request = FreeNba::Request.new(api_key)
  
      players = free_nba_request.get_players
      render json: players
    end
  
    def get_all_games
      api_key = 'eeb9489d25mshece0af3a05356c5p19ff4djsn50c7693cf960'
      free_nba_request = FreeNba::Request.new(api_key)

      games = free_nba_request.get_games
      render json: games
    end
  
    def get_all_teams
      api_key = 'eeb9489d25mshece0af3a05356c5p19ff4djsn50c7693cf960'
      free_nba_request = FreeNba::Request.new(api_key)

      teams = free_nba_request.get_teams
      render json: teams
    end
  end
  