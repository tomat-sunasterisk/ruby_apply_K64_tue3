class Bingo
  attr_accessor :B
  attr_accessor :I
  attr_accessor :N
  attr_accessor :G
  attr_accessor :O

  def generate_table
    self.B = (1..15).to_a.sample(5)
    self.I = (16..30).to_a.sample(5)
    self.N = (31..45).to_a.sample(5)
    self.N[2] = ""
    self.G = (46..60).to_a.sample(5)
    self.O = (61..75).to_a.sample(5)
  end
end
table = Bingo.new
table.generate_table

print " B "
print " | I "
print " | N "
print " | G "
print " | O "
puts ""
i = 0
while i < 5

  print " %-3s|" %table.B[i]
  print " %-3s|" %table.I[i]
  print " %-3s|" %table.N[i]
  print " %-3s|" %table.G[i]
  print " %-3s" %table.O[i]
  puts ""
  i +=1
end