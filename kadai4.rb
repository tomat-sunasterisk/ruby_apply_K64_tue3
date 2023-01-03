class Bingo
  attr_accessor :column_b
  attr_accessor :column_i
  attr_accessor :column_n
  attr_accessor :column_g
  attr_accessor :column_o

  def initialize
    @column_b = (01..15).to_a.sample(5)
    @column_i = (16..30).to_a.sample(5)
    @column_n = (31..45).to_a.sample(5)
    @column_n[2] = '  '
    @column_g = (46..60).to_a.sample(5)
    @column_o = (61..75).to_a.sample(5)
  end

  def displayBingo
    puts " B| I| N| G| O"
    for a in 0..4 do
      row = []
      [column_b,column_i,column_n,column_g,column_o].each do |c|
        row.push(c[a])
      end
        puts "#{format('%2s',row[0])}|#{format('%2s',row[1])}|#{format('%2s',row[2])}|#{format('%2s',row[3])}|#{format('%2s',row[4])}"
    end
  end
end

Table = Bingo.new
Table.displayBingo