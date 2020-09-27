# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

require 'pry'

# Write code here
def num_points_scored (name)
  game_hash
  counter = 0
  while counter < 5 do
    if game_hash[:home][:players][counter][:player_name] == name
      points_scored = game_hash[:home][:players][counter][:points]
    end
    if game_hash[:away][:players][counter][:player_name] == name
      points_scored = game_hash[:away][:players][counter][:points]
    end
    counter += 1
  end
  points_scored
end

def shoe_size (name)
  game_hash
  counter = 0
  while counter < 5 do
    if game_hash[:home][:players][counter][:player_name] == name
      shoe_size = game_hash[:home][:players][counter][:shoe]
    end
    if game_hash[:away][:players][counter][:player_name] == name
      shoe_size = game_hash[:away][:players][counter][:shoe]
    end
    counter += 1
  end
  shoe_size
end

def team_colors (team_name)
  game_hash
  counter = 0
  while counter < 5 do
    if game_hash[:home][:team_name] == team_name
      team_colors = game_hash[:home][:colors]
    end
    if game_hash[:away][:team_name] == team_name
      team_colors = game_hash[:away][:colors]
    end
    counter += 1
  end
  team_colors
end

def team_names
  game_hash
  team_names = [game_hash[:home][:team_name], game_hash[:away][:team_name]]
  team_names
end

def player_numbers (team_name)
  game_hash
  counter = 0
  player_numbers = []
  while counter < 5 do
    if game_hash[:home][:team_name] == team_name
      player_numbers << game_hash[:home][:players][counter][:number]
    end
    if game_hash[:away][:team_name] == team_name
      player_numbers << game_hash[:away][:players][counter][:number]
    end
    counter += 1
  end
  player_numbers
end

def player_stats (name)
  game_hash
  counter = 0
  players_stats = {}
  while counter < 5 do
    if game_hash[:home][:players][counter][:player_name] == name
      players_stats = game_hash[:home][:players][counter]
    end
    if game_hash[:away][:players][counter][:player_name] == name
      players_stats = game_hash[:away][:players][counter]
    end
    counter += 1
  end
  players_stats
end

def big_shoe_rebounds
  game_hash
  largest_shoe = 0
  final_counter = nil
  counter = 0
  while counter < 5 do
    if game_hash[:home][:players][counter][:shoe] > largest_shoe
      largest_shoe = game_hash[:home][:players][counter][:shoe]
      final_counter = counter
      final_team = :home
    end
    if game_hash[:away][:players][counter][:shoe] > largest_shoe
      largest_shoe = game_hash[:away][:players][counter][:shoe]
      final_counter = counter
      final_team = :away
    end
    counter += 1
  end
  p final_team
  p final_counter
  game_hash[final_team][:players][final_counter][:rebounds]
end















