class Game
    def initialize(player1_name, player2_name)
      @player1 = Player.new(player1_name)
      @player2 = Player.new(player2_name)
      @current_player = @player1
    end
  
    def current_player
      @current_player
    end
  
    def next_turn
      @current_player = (@current_player == @player1) ? @player2 : @player1
    end
  
    def start
        loop do
          question = Question.new
    
          puts "#{current_player.name}, here's your question:"
          puts question.question
    
          user_answer = gets.chomp
    
          # Check the answer if correct
          if question.check_answer(user_answer)
            puts "Correct! #{current_player.name} stays at #{current_player.lives} lives."
          else
            puts "Incorrect! #{current_player.name} loses a life."
            current_player.reduce_life
          end
    
          # Display scores
          puts "#{player1.name}: #{player1.lives} lives | #{player2.name}: #{player2.lives} lives"
    
          # Check if a player has lost
          if player1.lives == 0
            puts "#{player2.name} wins with #{player2.lives} lives remaining."
            break
          elsif player2.lives == 0
            puts "#{player1.name} wins with #{player1.lives} lives remaining."
            break
          end
    
          next_turn
        end
      end
    end