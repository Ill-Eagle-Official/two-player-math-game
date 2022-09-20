module InputOutput

  def question(first_num, second_num, player)
    puts "#{player.name}: What is #{first_num} + #{second_num}?"
  end

  def correct_answer(player)
    puts "#{player.name}: YES! You are correct."
  end

  def wrong_answer(player)
    puts "#{player.name}: Ooh, wrong! Maybe try counting on your fingers?"
  end

  def new_turn 
    puts "----- NEW TURN -----"
  end

  def score(first_player, second_player)
    puts "#{first_player.name}: #{first_player.lives}/3 vs #{second_player.name}: #{second_player.lives}/3"
  end

  def winner (player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Bruh... you suck at math."
  end

end