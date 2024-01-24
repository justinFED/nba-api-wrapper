module FreeNba
    class Request
      def initialize(api_key)
        @client = Client.new(api_key)
      end
  
      def get_players(params = {})
        @client.get('players', params)
      end
  
      def get_games(params = {})
        @client.get('games', params)
      end
  
      def get_teams(params = {})
        @client.get('teams', params)
      end
    end
  end
  