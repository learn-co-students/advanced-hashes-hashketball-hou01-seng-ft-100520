require 'pry'

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

def num_points_scored(player)
  local_hash = game_hash
  i = 0 
  j = 0 
  while i < local_hash[:home][:players].length do
    if local_hash[:home][:players][i][:player_name] == player
      return local_hash[:home][:players][i][:points]
    end
    i += 1 
  end 
  while j < local_hash[:away][:players].length do
    if local_hash[:away][:players][j][:player_name] == player
      return local_hash[:away][:players][j][:points]
    end
    j += 1 
  end 
end
    
  def shoe_size(player)
  local_hash = game_hash
  i = 0 
  j = 0 
  while i < local_hash[:home][:players].length do
    if local_hash[:home][:players][i][:player_name] == player
      return local_hash[:home][:players][i][:shoe]
    end
    i += 1 
  end 
  while j < local_hash[:away][:players].length do
    if local_hash[:away][:players][j][:player_name] == player
      return local_hash[:away][:players][j][:shoe]
    end
    j += 1 
  end 
end  

def team_colors(name)
  local_hash = game_hash
  if local_hash[:home][:team_name] == name
    return local_hash[:home][:colors]
  end
  if local_hash[:away][:team_name] == name
    return local_hash[:away][:colors]
  end
end
    
def team_names
  local_hash = game_hash
  names_array = []
  names_array << local_hash[:home][:team_name]
  names_array << local_hash[:away][:team_name]
  return names_array
end 
  
def player_numbers(team)
  number_array = []
  game_hash.each do |location, hash_info|
  if game_hash[location][:team_name] == team
    game_hash[location][:players].each do |player|
      number_array << player[:number]
    end
  end
end
  return number_array
end

def player_stats(player)
  game_hash.each do |location, hash_info|
    hash_info[:players].each do |player_hash|
      if player_hash[:player_name] == player
       return player_hash
      end
    end 
  end 
end

def big_shoe_rebounds
  largest_shoe = 0 
  game_hash.each do |location, hash_info|
    hash_info[:players].each do |player_hash|
      if player_hash[:shoe] > largest_shoe
        largest_shoe = player_hash[:shoe]
      end
    end
  end
  game_hash.each do |location, hash_info|
    hash_info[:players].each do |player_hash|
      if player_hash[:shoe] == largest_shoe
        return player_hash[:rebounds]
      end
    end
  end
end
  