#Encapsulation
#class Game
#  attr_accessor :name, :year, :system
#  attr_reader :created_at
# 
#  def initialize(name, options={})
#    self.name = name
#    self.year = options[:year]
#    self.system = options[:system]
#    @created_at = Time.now
#  end
# 
#  
#  def ==(game)
#    name == game.name && 
#    system == game.system &&
#    year == game.year
#  end
#end
#
#
#class Library
#  attr_accessor :games
#
#  def initialize(games)
#    self.games = games
#  end
#
#  def has_game?(search_name)
#    for game in games
#      return true if game. == game #notice how you're comparing an entire game object and its attributes here?
#    end
#    false
#  end
#end

#Private Method
#Things are looking good! We're able to use our Library class to store our games now. Whenever we call add_game, let's call a new private method called log which will call puts with some information about the game that was added. Your log method should take in a string to be displayed.
class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at
 
  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end
end

class Library
  attr_accessor :games

  def initialize(games)
    self.games = games
  end

  def has_game?(search_game)
    for game in games
      return true if game == search_game
    end
    false
  end

  def add_game(game)
    games << game
    info("Added game info #{game}") #notice how a message is being passed to the info method below?
  end

  private
  def log(info)
    puts info
  end
end

