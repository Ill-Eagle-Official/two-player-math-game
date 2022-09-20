require "./Player"
require "./InputOutput"
require "./Turn"

class Game
  include InputOutput

  attr_accessor :player1, :player2, :current_player

  def initialize

    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = self.player1

  end

  def start

    while player1.lives > 0 && player2.lives > 0

      self.current_player = self.current_player == self.player1 ? self.player2 : self.player1

      #Initiate new turn
      turn = Turn.new
      #pose question
      self.question(turn.first_num, turn.second_num, current_player)
      player_guess = gets.chomp

      #check if answer is correct
      if turn.correct?(player_guess)
        self.correct_answer(self.current_player)
      else
        wrong_answer(self.current_player)
        self.current_player.lose_life
      end

      #print the score
      self.score(self.player1, self.player2)
      self.new_turn

    end

    #print the winner

    self.current_player = self.current_player == self.player1 ? self.player2 : self.player1
    self.winner(self.current_player)

  end

end





