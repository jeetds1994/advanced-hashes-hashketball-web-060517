# Write your code here!

def game_hash
game_hash = {
  :home => {
    team_name: "Brooklyn Nets",
    colors: "Black, White",
    players: {
      alan_anderson: {
        number: "0",
        shoe: "16",
        points: "22",
        rebounds: "12",
        assists: "12",
        steals: "3",
        blocks: "1",
        slam_dunks: "1"
      },
      reggie_evans: {
        number: "30",
        shoe: "14",
        points: "12",
        rebounds: "12",
        assists: "12",
        steals: "12",
        blocks: "12",
        slam_dunks: "7"
      },
      brook_lopez: {
        number: "11",
        shoe: "17",
        points: "17",
        rebounds: "19",
        assists: "10",
        steals: "3",
        blocks: "1",
        slam_dunks: "15"
      },
      mason_plumlee: {
        number: "1",
        shoe: "19",
        points: "26",
        rebounds: "12",
        assists: "6",
        steals: "3",
        blocks: "8",
        slam_dunks: "5"
      },
      jason_terry: {
        number: "31",
        shoe: "15",
        points: "19",
        rebounds: "2",
        assists: "2",
        steals: "4",
        blocks: "11",
        slam_dunks: "1"
      }
    }
  },
  :away => {
    team_name: "Charlotte Hornets",
    colors: "Turquoise, Purple",
    players: {
      jeff_adrien: {
        number: "4",
        shoe: "18",
        points: "10",
        rebounds: "1",
        assists: "1",
        steals: "2",
        blocks: "7",
        slam_dunks: "2"
      },
      bismak_biyombo: {
        number: "0",
        shoe: "16",
        points: "12",
        rebounds: "4",
        assists: "7",
        steals: "7",
        blocks: "15",
        slam_dunks: "10"
      },
      desagna_diop: {
        number: "2",
        shoe: "14",
        points: "24",
        rebounds: "12",
        assists: "12",
        steals: "4",
        blocks: "5",
        slam_dunks: "5"
      },
      ben_gordon: {
        number: "8",
        shoe: "15",
        points: "33",
        rebounds: "3",
        assists: "2",
        steals: "1",
        blocks: "1",
        slam_dunks: "0"
      },
      brendan_haywood: {
        number: "33",
        shoe: "15",
        points: "6",
        rebounds: "12",
        assists: "12",
        steals: "22",
        blocks: "5",
        slam_dunks: "12"
      }
    }
  }
}
end

def num_points_scored(player_name)
  answer = ""
  player_name[" "] = "_"
  game_hash.each do |x, y|
    game_hash[x][:players].each do |n, m|
      if n.to_s == player_name.downcase
        answer = m[:points]
      end
    end
  end
  answer.to_i
end

def shoe_size(player_name)
  answer = ""
  player_name[" "] = "_"
  game_hash.each do |x, y|
    game_hash[x][:players].each do |n, m|
      if n.to_s == player_name.downcase
        answer = m[:shoe]
      end
    end
  end
  answer.to_i
end

def team_colors(team_name)
  answer = ""
  game_hash.each do |x, y|
    if game_hash[x][:team_name] == team_name
      answer = game_hash[x][:colors]
    end
  end
   answer.split(", ")
end

def team_names
  answer = []
  game_hash.each do |x, y|
    answer.push(game_hash[x][:team_name])
  end
   answer
end

def player_numbers(team_name)
  answer = []
  game_hash.each do |x, y|
    if game_hash[x][:team_name] == team_name
      game_hash[x][:players].each do |n, m|
        answer.push(m[:number].to_i)
      end
    end
  end
   answer
end

def player_stats(player_name)
  answer = Hash.new
  player_name[" "] = "_"
  game_hash.each do |x, y|
    game_hash[x][:players].each do |n, m|
      if n.to_s == player_name.downcase
        m.each do |g, h|
          answer[g] = h.to_i
        end
      end
    end
  end
  return answer
end

def big_shoe_rebounds

  largest_shoe = 0
  rebound = 0

  game_hash.each do |x, y|
    game_hash[x][:players].each do |k, v|
      if v[:shoe].to_i > largest_shoe
        largest_shoe = v[:shoe].to_i
        rebound = v[:rebounds].to_i
      end
    end
  end
  return rebound
end

big_shoe_rebounds
