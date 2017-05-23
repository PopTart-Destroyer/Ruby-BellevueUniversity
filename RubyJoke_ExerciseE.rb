#--------------------------------------------------------------------------
# 
# Script Name: RubyJoke.rb
# Version: 1.0
# Author: Jerry Lee Ford, Jr.
# Date: March 2010
# 
# Description: This Ruby script tells a series of 5 humorous jokes
# 
#--------------------------------------------------------------------------
# Update: April 9, 2017
# Version: 1.1
# Name: T. J. Flesher
# Class: WEB312 (Ruby) Bellevue University
# Website:  www.tflesher.com/humor/laffytaffy
# Description: Exercise E - Adding five additional jokes
#--------------------------------------------------------------------------


# Define custom classes ---------------------------------------------------

#Define a class representing the console window
class Screen
  def cls  #Define a method that clears the display area
    puts ("\n" * 25)  #Scroll the screen 25 times
  end
end


# Main Script Logic -------------------------------------------------------

Console_Screen = Screen.new  #Initialize a new Screen object

#Execute the Screen object's cls method in order to clear the screen
Console_Screen.cls

#Prompt the player for permission to begin the game
puts "Would you like to hear a few funny jokes? (y/n)"

#Collect the player's response
answer = STDIN.gets

#Remove any extra characters appended to the string
answer.chop!

#Analyze the player's response
if answer == "n"  #See if the player elected not to play

  Console_Screen.cls  #Clear the display area

  #Invite the player to return and play again
  puts "Sorry to hear that. Please return and play again soon."

else
  
  Console_Screen.cls  #Clear the display area

  #Display the beginning of the first joke
  puts "What kind of tea is sometimes hard to swallow? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "REALITY! (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Console_Screen.cls  #Clear the display area
 
  #Display the beginning of the second joke
  puts "What is a sea monster's favorite snack? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Ships and Dip! (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the third joke
  puts "How do you get a free light bulb? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Catch a lightening bug! (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the fourth joke
  puts "Why did the sock monster cross the road? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "To stink up the whole town! (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the fifth joke
  puts "What washes up on really small beaches? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Microwaves! (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Console_Screen.cls  #Clear the display area
  
  #5 Extra Jokes
  #Display the beginning of the sixth joke
  puts "Why didn't the bear cross the road? (Press Enter)"
  pause = STDIN.gets  #force the player to press Enter to continue
  puts "Becuase he was beary scared!"  #Punch line
  pause = STDIN.gets  #Force the player to press Enter to continue
  #Console_Screen.cls
  
  #Display the Seventh joke
  puts "How do you double your money? (Press Enter)"
  pause = STDIN.gets  #Force the player to press Enter to continue
  puts "Fold it!"	#Punch line
  pause = STDIN.gets  #Force the player to press Enter to continue
  #Console_Screen.cls
  
  #Display the Eigth joke
  puts "Why did the mouse sleep under the oil can? (Press Enter)"
  pause = STDIN.gets  #Force the player to press Enter to continue
  puts "So he wouldn't squeek in the morning!"  #Punch line
  pause = STDIN.gets  #Force the player to press Enter to continue
  #Console_Screen.cls
  
  #Display the Nineth joke
  puts "What gets wet while it dries?"
  pause = STDIN.gets  #Force the player to press Enter to continue
  puts "A towel!"  #Punch line
  pause = STDIN.gets  #Force the player to press Enter to continue
  #Console_Screen.cls
  
  #Display the Tenth joke
  puts "Where do computers go on Saturday night?"
  pause = STDIN.gets  #Force the player to press Enter to continue
  puts "To a disc-o!"	#Punch line
  pause = STDIN.gets  #Force the player to press Enter to continue
  
  Console_Screen.cls  #Clear the display area

  puts "Thanks for playing the Ruby Joke game!"
  puts ""
  puts "Copyright 2017 - www.tflesher.com/humor/laffytaffy"


end


