#---------------------------------------------------------
#
# Script Name:	Crazy8Ball.rb
# Version:		1.0
# Author:		Jerry Lee Ford, Jr.
# Date:			April 2010
# Description: 	This Ruby script demonstrates how to work 
#			    with variables. It generates random 
# 				numbers to create a fortune-telling game 
# 				that provides randomly selected answers 
# 				to the player’s questions.
#---------------------------------------------------------
# Updated:		April 15, 2017
# Author:		T. J. Flesher
# School:		CIS / Bellevue University
# Description:	Exercise page 111 -  Update 8-Ball Game.
#---------------------------------------------------------

# Define custom classes ----------------------------------
class Screen
 def cls #define a method that clears the display area
   puts ("\n" * 25)  #scroll the screen 25 times
   puts "\a" #make a little noise to get the player’s
			  # attention
 end
 
 def pause	#define a method that pauses the display area
	#execute the STDIN class's gets method to pause
	#script execution until the player presses Enter
	STDIN.gets
 end
end

 #Define a class representing the 8-ball
 class Ball
 
	#Define class properties for the 8-ball
	attr_accessor	:randomNo,	:greeting,	:question,	:goodbye
	
	#Define a method to be used to generate random answers
	def get_fortune
		randomNo = 1 + rand(10)
		
		#Assign an answer based on the randomly generated
		#number
		case randomNo
			when 1
				$predicition = "yes"
			when 2
				$predicition = "no"
			when 3
				$predicition = "maybe"
			when 4
				$predicition = "hard to tell. Try again"
			when 5
				$predicition = "unlikely"
			when 6
				$predicition = "unknown"
			when 7
				$predicition = "ask again later"
			when 8
				$predicition = "hazy try again"
			when 9
				$predicition = "better not tell you now"
			when 10
				$predicition = "concentrate and ask again"
		end
	end
	
	#This method displays the 8-ball greeting  message
	def say_greeting
		greeting = "\t\t Welcome to the Virtual Crazy 8-Ball" +
		"game\n\n\n\n\n\n\n\n\n\n\n\n\n" +
		"Instructions: Choose Yes or No to play the 8-Ball game!\n" +
		"When prompted enter your question you wish to be answered." +
		"\n\nPress Enter to continue. \n\n: "
		
		print greeting
	end
	
	#This method displays the 8-Ball's primary query
	def get_question
		
		reply = ""
		
		#loop until player enters something
		until reply != ""
			Console_Screen.cls #clear the display area
			question = "Type your question and press the Enter key. \n\n: "
			print question
			reply = STDIN.gets  #collect player input
			reply.chop!  #remove extra chars
		end 
	end
	
	#This method displays the 8-ball answers
	def tell_fortune()
		print "The answer is " + $predicition + ". \n\n: "
	end
	
	#This methods displays the 8-Ball's closing message
	def say_goodbye
		goodbye = "Thanks for playing the Virtual Crazy 8-Ball game! \n\n" +
		"Student: T. J. Flesher \n\nhttp://www.bellevue.edu/"		
		puts goodbye
	end
end

# Main Script Logic -------------------------------------------------------

Console_Screen = Screen.new  #Initialize a new Screen object
Eight_Ball = Ball.new  #Initialize a new Ball object

Console_Screen.cls  #Clear the display area

Eight_Ball.say_greeting  #Call method responsible for greeting the player

Console_Screen.pause  #Pause the game


answer = ""  #Initialize variable that is used to control the game's first 
             #loop

#Loop until the player enters y or n and do not accept any other input.
until answer == "y" || answer == "n"

  Console_Screen.cls  #Clear the display area

  #Prompt the player for permission to begin the game
  print "Would you like to have your fortune predicted? (y/n)\n\n: "

  answer = STDIN.gets  #Collect the player's response
  answer.chop!  #Remove any extra characters appended to the string

end 

#Analyze the player's response
if answer == "n"  #See if the player elected not to play

  Console_Screen.cls  #Clear the display area

  #Invite the player to return and play again
  puts "Okay, perhaps another time. \n\n"

  #Call goodbye
  Eight_Ball.say_goodbye
  
else  #The player has elected to play the game

  #Initialize variable that is used to control the game's primary loop
  gameOver = "No"
   
  #Loop until the player decides to quit
  until gameOver == "Yes"
  
    Console_Screen.cls  #Clear the display area
    
    #Call upon the method responsible for prompting the player to ask a 
    #question
    Eight_Ball.get_question
  
    #Call upon the method responsible for generating an answer
    Eight_Ball.get_fortune
  
  
    Console_Screen.cls  #Clear the display area
  
    #Call upon the method responsible for telling the player the 8-Ball's
    #answer
    Eight_Ball.tell_fortune

    Console_Screen.pause  #Pause the game
    
    Console_Screen.cls  #Clear the display area

    #Find out if the player wants to ask another question
    print "Press Enter to ask another question or type q to quit. \n\n: "

    answer = STDIN.gets  #Collect the player's response
    answer.chop!  #Remove any extra characters appended to the string

    #Analyze the player's response
    if answer == "q"  #See if the player elected not to play
      gameOver = "Yes"  #The player wants to quit
    end

  end

  Console_Screen.cls  #Clear the display area

  #call upon the method responsible for saying goodbye to the player
  Eight_Ball.say_goodbye
  
end


