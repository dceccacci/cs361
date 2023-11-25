Author: Devon Ceccacci
Date: Nov-25-2023
Course: CS 361
Activity: Exercise 8.2

-- Some of the changes, and the idea behind some of them.

1)  Created a Player class that holds the players :name. If there was any other shared attributes among all players it would be placed here like each player having a player ID.
2)  Created a PlayerGroup that inherits from Array instead of just using an Array to hold the different Players since there may come a time where the group of players might have special functions or variables like a group ID.
3)  Made it so that Arguments are passed as a Hash to the different Classes.
4)  Injected dependencies instead of having the classes make their own. This allows more control over these objects outside of the PlayGames class.
5)  Something that could be added later is instead of passing a string name into the new specific game player classes, you could pass a Player class which then could be used in multiple games, and keep track of the scores from each game on this one class Object. Though I did not implement this, the new structure of the code should allow this more easily in the future.
6)  I decided to keep the case structure of play() in PlayGames class even though they repeat the same code now, that might change later on where a Chess game might also want to call some other Chess specific function during or after its play.