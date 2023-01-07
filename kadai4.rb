class Bingo
  attr_reader :column_b, :column_i, :column_n, :column_g, :column_o
  def initialize
    @column_b = (1..15).to_a.sample(5)
    @column_i = (16..30).to_a.sample(5)
    @column_n = (31..45).to_a.sample(5)
    @column_g = (46..60).to_a.sample(5)
    @column_o = (61..75).to_a.sample(5)
    @column_n[2] = ''
  end
  
  def display
    puts ' B| I| N| G| O'
    (0..4).each do |i|
      puts "#{@column_b[i].to_s.rjust(2)}|" + "#{@column_i[i].to_s.rjust(2)}|" + "#{@column_n[i].to_s.rjust(2)}|" + "#{@column_g[i].to_s.rjust(2)}|" + @column_o[i].to_s.rjust(2)
    end
  end
end

bingo = Bingo.new
bingo.display