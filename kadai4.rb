class Bingo
  
  def generate_card() 
    @b = (1..15).to_a.sample(5)
    @i = (16..30).to_a.sample(5)
    @n = (31..45).to_a.sample(5)
    @n[2] = " "
    @g = (46..60).to_a.sample(5)
    @o = (61..75).to_a.sample(5)
  end

  def show()
    puts("B |I |N |G |O ")
    (0..4).each do |i|
      puts "#{@b[i].to_s.ljust(2)}|#{@i[i].to_s.ljust(2)}|#{@n[i].to_s.ljust(2)}|#{@g[i].to_s.ljust(2)}|#{@o[i].to_s.ljust(2)}"
    end
  end
end

bingo = Bingo.new
bingo.generate_card
bingo.show