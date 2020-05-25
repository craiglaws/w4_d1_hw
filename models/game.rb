class Game

  def self.play(input1, input2)

    weapons = ["rock", "paper", "scissors"]
    if input2 == ""
      input2 = weapons.sample
    end

    if input1 == input2
      return "Draw"
    elsif input1 == "rock" && input2 == "scissors"
      return "Rock wins"
    elsif input1 == "rock" && input2 == "paper"
      return "Paper wins"
    elsif input1 == "paper" && input2 == "scissors"
      return "Scissors wins"
    elsif input1 == "paper" && input2 == "rock"
      return "Paper wins"
    elsif input1 == "scissors" && input2 == "paper"
      return "Scissors wins"
    elsif input1 == "scissors" && input2 == "rock"
      return "Rock wins"
    end
  end



end
