class Bingo
  attr_accessor :B
  attr_accessor :I
  attr_accessor :N
  attr_accessor :G
  attr_accessor :O

  def generate_card
    self.B = (1..15).to_a.sample(5)
    self.I = (16..30).to_a.sample(5)
    self.N = (31..45).to_a.sample(5)
    self.N[2] = ""
    self.G = (46..60).to_a.sample(5)
    self.O = (61..75).to_a.sample(5)
  end
end
card = Bingo.new
card.generate_card

print "  B |  I |  N |  G |  O \n"
i = 0
while i < 5

  print " #{card.B[i].to_s.rjust(2)} | #{card.I[i].to_s.rjust(2)} | #{card.N[i].to_s.rjust(2)} | #{card.G[i].to_s.rjust(2)} | #{card.O[i].to_s.rjust(2)} \n"
  i +=1
end