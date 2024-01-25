# NBA API Wrapper

## Overview
This Ruby API wrapper simplifies interactions with the [Free NBA API](https://rapidapi.com/theapiguy/api/free-nba) in a Ruby on Rails application. It encapsulates multiple API calls, making it easy to retrieve information about players, games, and teams.

## Features
- **API Wrapper Structure:**
  - Organized in the `app/api` directory with a subdirectory for the Free NBA API (`free_nba`).
  - Includes `client.rb` and `request.rb` files inside the Free NBA API directory.

- **External Gems Used:**
  - Utilizes the `rest-client` gem for making HTTP requests to the Free NBA API.

- **API Endpoints Available:**
  - Implements endpoints for getting information about players, games, and teams.
    - `/api/get_all_players`
    - `/api/get_all_games`
    - `/api/get_all_teams`

- **Testing:**
  - Creates tests for the API endpoints in the `Api::CreatorRolesControllerTest`.
  - Tests can be executed using the `rails test` command.

## Setup

### Prerequisites
Before getting started, ensure you have the following installed:

- Ruby: 2.7.2 or higher
- Rails: 6.0 or higher
- Bundler: Install with `gem install bundler`

### Installation
Follow these steps to set up the NBA API Wrapper:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/nba_api_wrapper.git
   cd nba_api_wrapper

### Usage
The NBA API Wrapper provides simple access to information about players, games, and teams. Below are examples of how to use the implemented API endpoints:

  1. **Get All Games**
      - Endpoint: `/api/get_all_games`
      - Example Request: curl http://localhost:3000/api/get_all_games
    
  2. **Get All Players**
      - Endpoint: `/api/get_all_players`
      - Example Request: curl http://localhost:3000/api/get_all_players
    
  3. **Get All Teams**
      - Endpoint: `/api/get_all_teams`
      - Example Request: curl http://localhost:3000/api/get_all_teams
    
     
### Structure
  - The structure of the NBA API Wrapper is as follows:
     - `app/api`
     - `free_nba (Free NBA API wrapper)`
     - `client.rb (API client implementation)`
     - `request.rb (API request handling)`

