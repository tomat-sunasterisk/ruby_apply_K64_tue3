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

print "B"
print " | I"
print " | N"
print " | G"
print " | O"
puts ""
i = 0
while i < 5

  print "#{card.B[i]}".rjust(3)
  print "| #{card.I[i]}".rjust(3)
  print "| #{card.N[i]}".rjust(3)
  print "| #{card.G[i]}".rjust(3)
  print "| #{card.O[i]}".rjust(3)
  puts ""
  i +=1
end
