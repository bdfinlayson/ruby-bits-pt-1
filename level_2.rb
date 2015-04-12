#Optional Arguments

#def new_game(name, year = nil, system = nil )
#  {
#    name: name,
#    year: year,
#    system: system
#  }
#end
#game = new_game("Street Figher II", nil, nil)

#Options Hash Argument
#def new_game(name, options = { })
#  {
#    name: name,
#    year: options[:year],
#    system: options[:system]
#  }
#end
#game = new_game("Street Figher II", year: "SNES", system: 1992)

#Raise Exception
#class InvalidGameError < StandardError; end
#def new_game(name, options={})
#  raise InvalidGameError if name.nil?
#  {
#    name: name,
#    year: options[:year],
#    system: options[:system]
#  }
#end
#begin
#  game = new_game(nil)
#rescue InvalidGameError => e
#  puts "There was a problem creating your new game: #{e.message}"
#end

#Splat Arguments
#they tell ruby to expect an array
#def describe_favorites(*games)
#  for game in games
#    puts "Favorite Game: #{game}"
#  end
#end
#describe_favorites('Mario', 'Contra', 'Metroid')

