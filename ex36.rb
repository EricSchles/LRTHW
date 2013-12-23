def prompt()
	puts "> "
end

def win()
	puts "Congradualtions you won!!!"
end

def guessing_game()
	puts "Try to guess the number, it's something between 1 and 10"
	puts "You have 5 guesses"
	number = Random.rand(11)
	counter = 0
	while counter < 5
		puts "what's your guess?"
		guess = gets.chomp()
		if guess == number
			puts "correct!"
			win()
			break
		else
			
			counter += 1
			guesses_left = 5 - counter
			if guesses_left > 0
				puts "incorrect, guess again"
				puts guesses_left.to_s + " guesses left"
			else
				puts "sorry, no guesses left."
			end
		end
	end
	puts "You lose...Wanna play another game?"
	answer = gets.chomp()
	if answer == "yes"
		start()
	else
		Process.exit
	end
	
end

def simple_math()
	score = 0
	puts "What's 5 + 5?"
	q1 = gets.chomp()
	if q1 == "5"
		score += 1
		puts "correct!"
	else
		puts "Sorry! wrong answer"
	end
	puts "What's 2 + 7?"
        q2 = gets.chomp()
        if q2 == "9"
                score += 1
                puts "correct!"
        else
                puts "Sorry! wrong answer"
        end
	puts "What's 27 + 32?"
        q3 = gets.chomp()
        if q3 == "59"
                score += 1
                puts "correct!"
        else
                puts "Sorry! wrong answer"
        end
	puts "What's 13 - 5?"
        q4 = gets.chomp()
        if q4 == "8"
                score += 1
                puts "correct!"
        else
                puts "Sorry! wrong answer"
        end
	puts "What's 27 - 16?"
        q5 = gets.chomp()
        if q5 == "11"
                score += 1
                puts "correct!"
        else
                puts "Sorry! wrong answer"
        end
	puts "What's 36 - 87?"
        q6 = gets.chomp()
        if q6 == "-51"
                score += 1
                puts "correct!"
        else
                puts "Sorry! wrong answer"
        end
	puts "What's 5 * 5?"
        q7 = gets.chomp()
        if q7 == "25"
                score += 1
                puts "correct!"
        else
                puts "Sorry! wrong answer"
        end
	puts "What's 7 * 7?"
        q8 = gets.chomp()
        if q8 == "49"
                score += 1
                puts "correct!"
        else
                puts "Sorry! wrong answer"
        end
	puts "What's 36 * 12?"
        q9 = gets.chomp()
        if q9 == "432"
                score += 1
                puts "correct!"
        else
                puts "Sorry! wrong answer"
        end
	puts "What's 175 / 5?"
        q10 = gets.chomp()
        if q10 == "35"
                score += 1
                puts "correct!"
        else
                puts "Sorry! wrong answer"
        end
	puts "Your raw score is "+ score.to_s
	percent_correct = score / 10
	puts "You got "+percent_correct.to_s+" percent correct"
	if score >= 8
		puts "well done!"
		win()
	else
		puts "maybe you should bone up on your math skills, a bit."
		puts "You lose...Wanna play another game?"
	        answer = gets.chomp()
       		if answer == "yes"
                	start()
        	else
                	Process.exit
        	end
 
	end
end

def riddle()
	puts "Welcome to the riddle game!"
	puts "What walks on four legs in the morning, 2 legs during the day and three legs in the evening?"
	answer = gets.chomp()
	answers = ["man", "humankind", "humankind", "man kind", "human", "humans", "people", "us"]
	if answers.include? answer
		puts "correct!"
		win()
	else
		puts "Maybe you should read more, jeez."
		 puts "You lose...Wanna play another game?"
 	       answer = gets.chomp()
        	if answer == "yes"
                	start()
        	else
                	Process.exit
        	end
	end
end

def start()
	puts "Welcome."
	puts "Choose your game: "
	puts "1. guessing game"
	puts "2. simple math"
	puts "3. riddle"

	answer = gets.chomp()
		
	unless ["1","2","3"].include? answer
		puts "You did not enter a number"
		Process.exit() 	
	else
		if answer == "1"
			guessing_game()
		elsif answer == "2"
			simple_math()
		else
			riddle()
		end	
	end
end
start()

