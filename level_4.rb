require 'active_support'

#arrays
#def last_games(games, index)
#    return games.from(index)
#end
#games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
#puts last_games(games, 1)

#arrays pt 2
#def first_games(games, index)
#
#end
#games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
#puts first_games(games, 0)

#dates
#Implement the anniversary method below to return a DateTime representing the given number of years after the game's release date.
#def anniversary(game, years)
#
#  game[:release].advance(:years, years)
#end
#
#game = {
#  name: 'Contra',
#  release: DateTime.new(1987, 2, 20, 0, 0, 0)
#}
#puts anniversary(game, 20)


#difference
#Using ActiveSupport, return the difference between Mario's favorite games and Luigis's favorite games by implementing the difference_between method.
def difference_between(player1, player2)
  
  player1.diff(player2)

end

mario_favorite = {
  sports: "Mario Sports Mix",
  action: "Super Mario World"
}

luigi_favorite = {
  sports: "Golf",
  action: "Super Mario World"
}

puts difference_between(mario_favorite, luigi_favorite)

