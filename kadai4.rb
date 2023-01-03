class Bingo
    def generate_card
        @b = (1..15).to_a.sample(5) #arr b[5]
        @i = (16..30).to_a.sample(5)
        @n = (31..45).to_a.sample(5)
        @g = (46..60).to_a.sample(5)
        @o = (61..75).to_a.sample(5)
        @n[2] = "  "
    end

    def display
        puts " B |  I |  N |  G |  O "
        5.times do |i|
            puts "#{@b[i].to_s.rjust(2)} | #{@i[i]} | #{@n[i]} | #{@g[i]} | #{@o[i]}"
        end
    end
end

bingo = Bingo.new
bingo.generate_card
bingo.display