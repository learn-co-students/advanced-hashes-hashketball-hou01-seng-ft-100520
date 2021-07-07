# Write your code below game_hash
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



def num_points_scored (player_name)
  i=0
  j=0
  home_player_path=game_hash[:home][:players]
  away_player_path=game_hash[:away][:players]

  while i<home_player_path.length do
    if home_player_path[i][:player_name]==player_name
      return home_player_path[i][:points]
    end #ends if statement
      i +=1
  end # ends while do statement

  while j<away_player_path.length do
    if away_player_path[j][:player_name]==player_name
      return away_player_path[j][:points]
    end #ends if statement
      j +=1
  end #ends while do statement
end

def shoe_size (player_name)
  i=0
  j=0
  home_player_path=game_hash[:home][:players]
  away_player_path=game_hash[:away][:players]

    while i<home_player_path.length do
      if home_player_path[i][:player_name]==player_name
        return home_player_path[i][:shoe]
      end #ends if statement
        i +=1
    end # ends while do statement

    while j<away_player_path.length do
      if away_player_path[j][:player_name]==player_name
        return away_player_path[j][:shoe]
      end #en
      j +=1
    end
end

def team_colors (team_name)
  if game_hash[:home][:team_name]==team_name
    return game_hash[:home][:colors]
  elsif game_hash[:away][:team_name]==team_name
    return game_hash[:away][:colors]
  end
end

def team_names
  array=[]
  home_team=game_hash[:home][:team_name]
  away_team=game_hash[:away][:team_name]
  array.push("#{home_team}", "#{away_team}")
  return array
end

def player_numbers (team_name)
  h=[]
  a=[]
  i=0
  j=0
    while i<game_hash[:home][:players].length do
      if game_hash[:home][:team_name]==team_name
      h[i]=game_hash[:home][:players][i][:number]

      end
    i +=1
    end #ends while.. do statement

    while j<game_hash[:away][:players].length do
      if game_hash[:away][:team_name]==team_name
      a[j]=game_hash[:away][:players][j][:number]

      end
    j +=1
    end # ends while.. do statemtnt

    if game_hash[:home][:team_name]==team_name
      return h
    else
      return a
    end
  #binding.pry
  end #ends method

def player_stats (player_name)
  i=0
  j=0
  home_player_path=game_hash[:home][:players]
  away_player_path=game_hash[:away][:players]

  while i<home_player_path.length do
    if home_player_path[i][:player_name]==player_name
      return home_player_path[i]
    end #ends if statement
      i +=1
  end # ends while do statement

  while j<away_player_path.length do
    if away_player_path[j][:player_name]==player_name
      return away_player_path[j]
    end #ends if statement
      j +=1
  end #ends while do statement
end

def big_shoe_rebounds

  i=0
  j=0
  shoe_value_h=[]
  shoe_value_a=[]
  home_player_path=game_hash[:home][:players]
  away_player_path=game_hash[:away][:players]

    while i<home_player_path.length do
      shoe_value_h[i]=home_player_path[i][:shoe]
        i +=1
    end

    while j<away_player_path.length do
      shoe_value_a[j]=away_player_path[j][:shoe]
        j +=1
    end


   if shoe_value_a.max>shoe_value_h.max
      index_a=shoe_value_a.index(shoe_value_a.max)
      return away_player_path[index_a][:rebounds]
    elsif shoe_value_a.max<shoe_value_h.max
      index_h=shoe_value_h.index(shoe_value_h.max)
      return home_player_path[index_h][:rebounds]
    end
end

def most_points_scored
  i=0
  j=0
  point_value_h=[]
  point_value_a=[]
  home_player_path=game_hash[:home][:players]
  away_player_path=game_hash[:away][:players]

    while i<home_player_path.length do
      point_value_h[i]=home_player_path[i][:points]
        i +=1
    end

    while j<away_player_path.length do
      point_value_a[j]=away_player_path[j][:points]
        j +=1
    end


   if point_value_a.max>point_value_h.max
      index_a=point_value_a.index(point_value_a.max)
      return away_player_path[index_a][:player_name]
    elsif point_value_a.max<point_value_h.max
      index_h=point_value_h.index(point_value_h.max)
      return home_player_path[index_h][:player_name]
    end
end

def winning_team
  i=0
  j=0
  total_points_h=[]
  total_points_a=[]
  home_player_path=game_hash[:home][:players]
  away_player_path=game_hash[:away][:players]

    while i<home_player_path.length do
      total_points_h[i]=home_player_path[i][:points]
        i +=1
    end

    while j<away_player_path.length do
      total_points_a[j]=away_player_path[j][:points]
        j +=1
    end

    if total_points_a.sum>total_points_h.sum
      return game_hash[:away][:team_name]
    elsif total_points_a.sum<total_points_h.sum
      return game_hash[:home][:team_name]
    end

end
