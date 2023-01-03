def format_cols(cols)
  return cols.map{|col| col.to_s.rjust(2) }.join(' | ')
end
class Bingo
  attr_accessor :body
  attr_accessor :header
  def initialize
    numbers = (1..75).each_slice(15).map{|numbers| numbers.sample(5) }.transpose
    numbers[2][2] = nil
    @body = numbers.map{|cols| format_cols(cols) }
    @header = format_cols('BINGO'.chars)
  end
  def show 
    puts [@header, @body].join("\n")
  end
end

bingo = Bingo.new
bingo.show
