class Board 
  attr_accessor :cells 

  def reset! 
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end 

  def initialize
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end 

  def position(input)
    cells[input.to_i-1]
  end 

  def full? 
    cells.all? {|token| token == "X" || token = "O"}
  end 

  def turn_count
    cells.count {|token| token == "X" || token = "O"}
  end 

  def taken?(input)
    !(positiom(input) == " " || position(input) == "")
  end 

  def valid_move?(input)
    input.to_i.between(1,9) && !taken?(input)
  end 

  def update(input, player)
    cells[input.to_i-1] = player.token
  end
  

end 
