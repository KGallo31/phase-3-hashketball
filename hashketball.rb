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

# Write code here

def num_points_scored(this_player_name)
  game_hash.each {|k,v| 
    v[:players].each {|p| 
      if p[:player_name] == this_player_name
        return p[:points]
      end
    }
   }
  # is_player_there = game_hash[:home][:players].any? {|k| k[:player_name] == this_player_name}
  # if is_player_there 
  #   game_hash[:home][:players].each do |player|
  #     if player[:player_name] == this_player_name
  #       return player[:points]
  #     end
  #   end
  # else
  #   game_hash[:away][:players].each do |player|
  #     if player[:player_name] == this_player_name
  #       return player[:points]
  #     end
  #   end
  # end
#   # game_hash[:home][:players].each {|k,v| puts "#{k}"}
end
def shoe_size(this_player_name)
  game_hash.each {|k,v| 
    v[:players].each {|p| 
      if p[:player_name] == this_player_name
        return p[:shoe]
      end
    }
  }
end
def team_colors(team_name)
  game_hash.each {|k,v| 
    if v[:team_name] == team_name
      return v[:colors]
    end
  }
end
def player_numbers(this_team_name)
  newarr = []
  game_hash.each {|k,v| 
    if v[:team_name] == this_team_name
      v[:players].each {|p| 
        newarr << p[:number]
    }
  end
  }
  return newarr
end
def team_names
  newarr = []
  game_hash.each {|k,v| 
      newarr << v[:team_name]
  }
  return newarr
end
def player_stats(this_player_name)
  game_hash.each {|k,v| 
    v[:players].each {|p|
      if p[:player_name] == this_player_name
        return p
      end
    }
  }
end
# def biggest_shoe
#   biggest_shoe_player = ''
#   biggest_shoe = 0
#   game_hash.each {|k,v| 
#     v[:players].each {|p|
#       if p[:shoe] > biggest_shoe
#         biggest_shoe = p[:shoe]
#         biggest_shoe_player = p[:player_name]
#       end
#     }
#   }
#   return biggest_shoe_player
# end
# def big_shoe_rebounds
#   game_hash.each {|k,v|
#     v[:players].each {|p| 
#       if p[:player_name] == biggest_shoe
#         return p[:rebounds]
#       end
#     }
#   }
# end

def most_points
  biggest_points_player = ''
  scored_points = 1
  game_hash.each {|k,v| 
    v[:players].each {|p|
      if p[:points] > scored_points
        scored_points = p[:poitns]
        biggest_points_player = p[:player_name]
      end
    }
  }
  return biggest_points_player
end
def most_points_scored
  game_hash.each {|k,v|
    v[:players].each {|p| 
      if p[:player_name] == most_points
        return p[:points]
      end
    }
  }
end
puts "#{most_points_scored} is the most rebounds with biggest shoe"
player_numbers("Brooklyn Nets")
team_colors("Brooklyn Nets")
shoe_size("Kemba Walker")
num_points_scored("Kemba Walker")