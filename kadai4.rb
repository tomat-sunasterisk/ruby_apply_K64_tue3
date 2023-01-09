class BingoBoard
  
  attr_reader :bingo_board
  def initialize
    b = (1..15).to_a.shuffle.slice(0..4)
    i = (16..30).to_a.shuffle.slice(0..4)
    n = (31..45).to_a.shuffle.slice(0..4)
    g = (46..60).to_a.shuffle.slice(0..4)
    o = (61..75).to_a.shuffle.slice(0..4)
    @bingo_board = [b, i, n, g, o].transpose
    @bingo_board[2][2] = "X"
    @call_stack = (1..75).to_a.shuffle
  end

  def draw_ball
    @number = @call_stack.pop
    if @number <= 15
      call_letter = "B"
    elsif @number <= 30
     call_letter = "I"
    elsif @number <= 45
      call_letter = "N"
    elsif @number <= 60
      call_letter = "G"
    else
      call_letter = "O"
    end
  end
  def display
    puts ""
    puts("  B | I  | N  | G  | O  |")
    @bingo_board.each do |row|
      print " "
      row.each do |element|
        if element.to_s.length == 2
          print element.to_s + " | "
        else
          print " " + element.to_s + " | "
        end
      end
      puts ""
    end
  end   
end
game = BingoBoard.new
game.draw_ball
game.display
