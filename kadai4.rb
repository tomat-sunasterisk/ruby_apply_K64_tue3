class Bingo 
  def genCard
    b=(1..15).to_a.sample(5)
    i=(16..30).to_a.sample(5)
    n=(31..45).to_a.sample(5)
    n[2]="  "
    g=(46..60).to_a.sample(5)
    o=(61..75).to_a.sample(5)
    puts " B |  I |  N |  G |  O "
    (0..4).to_a.each do
      |j| 
         puts [b[j].to_s.rjust(2),i[j].to_s.rjust(2),n[j].to_s.rjust(2),g[j].to_s.rjust(2),o[j].to_s.rjust(2)].join(" | ")     
     end
  end
end
bingo=Bingo.new 
bingo.genCard