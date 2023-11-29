
# ---------- Players Code ------------
class PlayerGroup < Array
  """
    *COULD hold special functions or variables for the PlayerGroup
    Otherwise works like a normal Array
  """
end

class Player
  """
    A non-game specific player
    Holds information like the players Name
  """
  attr_accessor :name
  def initialize(args)
    @name = args[:name]
  end
  def name
    @name
  end
end

class PokerPlayer < Player
"""
  A player that plays Poker
  Holds information like the players Hand.
"""
attr_accessor :hand
def initialize(args)
  super(args)
  @hand = args[:hand]
end
def hand
  @hand
end
end

class ChessPlayer < Player
  """
    A player that plays chess
    Holds information like what Chess piece Color the player is playing as.
  """
  attr_accessor :color
  def initialize(args)
    super(args)
    @color = args[:color]
  end
  def color
    @color
  end
end

class GoPlayer < Player
  """
    A player that plays Go
    Holds information like what Go piece Color the player is playing as.
  """
  attr_reader :color
  def initialize(args)
    super(args)
    @color = args[:color]
  end
  def color
    @color
  end
end


# --------- Game Code -----------

class Game
  """
    non-specific game
    Holds the array of players playing the game
  """
  def initialize(args)
    @players = args[:players]
  end

  def play()
    puts("Best Game Ever!")
  end

  def results()
    return ("YOU WON...PROBABLY!")
  end
end

class Poker < Game
"""
  A game of poker
"""
def initialize(args)
  super(args)
end

def play()
  puts "Players in the poker game:"
  @players.length().times {|i| puts "#{@players[i].name}: #{@players[i].hand}"}
  # [pretend there's code here]
end

def results()
  return "[pretend these are poker results]"
end

end

class Chess < Game
"""
  A game of chess
"""
def initialize(args)
  super(args)
end

def play()
  puts "Players in the chess game:"
  @players.length().times { |x| puts "#{@players[x].name}: #{@players[x].color}" }
  # [pretend there's code here]
end

def results()
  return "[pretend these are chess results]"
end

end

class Go < Game
"""
  A game of Go
"""
def initialize(args)
  super(args)
end

def play()
  puts "Players in the go game:"
  @players.each { |player| puts "#{player.name}: #{player.color}" }
  # [pretend there's code here]
end

def results()
  return "[pretend these are go results]"
end
end

class PlayGames
"""
  Used to initilalize a passed game.
"""

  def initialize(args)
    @game = args[:game]
  end

  def play()
    @game.play()
    puts @game.results()
  end
end

# =========== Poker Game =================

# Create Players
alicePoker = PokerPlayer.new(:name => "alice", :hand => nil)
bobPoker = PokerPlayer.new(:name => "bob", :hand => nil)
chrisPoker = PokerPlayer.new(:name => "chris", :hand => nil)
davePoker = PokerPlayer.new(:name => "dave", :hand => nil)
# Create Player Group
pokerGroup = PlayerGroup.new()
pokerGroup << alicePoker << bobPoker << chrisPoker << davePoker
# Create Poker Game
pokerGame = Poker.new(:players => pokerGroup)
# Play Poker game
pg = PlayGames.new(:game => pokerGame)
pg.play()

puts


# ============= Chess Game =================

# Create Players
aliceChess = ChessPlayer.new(:name => "alice", :color => "white")
bobChess = ChessPlayer.new(:name => "bob", :color => "black")
# Create Player Group
chessGroup = PlayerGroup.new()
chessGroup << aliceChess << bobChess
# Create Chess Game
chessGame = Chess.new(:players => chessGroup)
# Play Chess Game
pg = PlayGames.new(:game => chessGame)
pg.play()

puts


# ============= Go Game ==================

# Create Players
aliceGo = GoPlayer.new(:name => "alice", :color => "white")
bobGo = GoPlayer.new(:name => "bob", :color => "black")
# Create Player Group
goGroup = PlayerGroup.new()
goGroup << aliceGo << bobGo
# Create Go Game
goGame = Go.new(:players => goGroup)
# Play Go Game
pg = PlayGames.new(:game => goGame)
pg.play()
