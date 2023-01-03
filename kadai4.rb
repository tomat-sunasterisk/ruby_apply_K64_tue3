class Bingo
  attr_accessor :value
  def initialize(char)
    self.value = []
    for a in 0..4 do
      case char
        when 'B'
          self.value[a] = (1..15).to_a.sample(5)
        when 'I'
          self.value[a] = (16..30).to_a.sample(5)
        when 'N'
          if a == 2
            self.value[a] = ' '
            next
          end
          self.value[a] = (31..45).to_a.sample(5)
        when 'G'
          self.value[a] = (46..60).to_a.sample(5)
        when 'O'
          self.value[a] = (61..75).to_a.sample(5)
      end
    end
  end
end
b_col = Bingo.new('B')
i_col = Bingo.new('I')
n_col = Bingo.new('N')
g_col = Bingo.new('G')
o_col = Bingo.new('O')

puts " B  |  I |  N |  G |  O "
for i in 0..4 do
  print   " %-3s|" %b_col.value[i]
  print   " %-3s|" %i_col.value[i]
  print   " %-3s|" %n_col.value[i]
  print   " %-3s|" %g_col.value[i]
  puts    " %-3s " %o_col.value[i]
end