class Turn

  attr_accessor :first_num, :second_num

  def initialize
    @first_num = rand(1..20)
    @second_num = rand(1..20)
    @answer = self.first_num + self.second_num
  end

  def correct?(guess)
    guess.to_i == @answer.to_i
  end

end