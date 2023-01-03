class Bingo
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o

  def initialize
    self.b = (1..15).to_a.sample(5)
    self.i = (16..30).to_a.sample(5)
    self.n = (31..45).to_a.sample(5)
    self.n[2] = '  '
    self.g = (46..60).to_a.sample(5)
    self.o = (61..75).to_a.sample(5)
  end

  def showBingoSheet
    puts " B| I| N| G| O"
    for a in 0..4 do
      row = []
      [b,i,n,g,o].each do |character|
        row.push(character[a])
      end
        puts "#{format('%2s',row[0])}|#{format('%2s',row[1])}|#{format('%2s',row[2])}|#{format('%2s',row[3])}|#{format('%2s',row[4])}"
    end
  end
end

sheet = Bingo.new
sheet.showBingoSheet
