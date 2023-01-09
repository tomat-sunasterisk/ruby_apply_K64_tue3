class Bingo
  attr_accessor :colB, :colI, :colN, :colG, :colO

  def initialize
    @colB = (1..15).to_a.sample(5)
    @colI = (16..30).to_a.sample(5)
    @colN = (31..45).to_a.sample(5)
    @colN[2] = '  '
    @colG = (46..60).to_a.sample(5)
    @colO = (61..75).to_a.sample(5)
  end

  def show
    puts 'B    | I     | N     | G     | O'
    (0..4).each do |i|
      puts "#{@colB[i]} \t | #{@colI[i]}\t | #{@colN[i]}\t | #{@colG[i]}\t | #{@colO[i]}"
    end
  end
end
