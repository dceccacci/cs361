"""
Name: Devon Ceccacci
Date: Oct-02-2023
Course: 361 Software Engineering I
Project: Exercise 1a
Language: Ruby

"""
# -------------------- Class Below -----------------------

class Player

    # Allows name and score to be accessible out of class
    attr_accessor :name, :score

    def initialize(name, score)
        """ 
        Initilize a Player class with a name and score

        Arguments:
            name {string} -- String that holds the name of the player
            score {integer} -- Integer that holds the score of the player

        """
        # Set this Player instance to the passed arugments
        @name = name
        @score = score
    end
end

# ----------------- Creating and Printing Players Below ---------------

# Creates an array to hold the players
playerArray = []

# Creates fifty Player classes and adds them to the player array
for i in 1..50 do
    newName = "Player #{i}"
    newScore = rand(10..300)
    newPlayer = Player.new(newName, newScore)
    playerArray.push(newPlayer)
end

# For each player in the array, prints out their name and score
for player in playerArray do
    puts "Ready #{player.name}! Score: #{player.score}"
end