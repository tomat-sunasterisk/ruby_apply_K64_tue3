class Bingo
    def generate_card
        @b = (1..15).to_a.sample(5)
        @i = (16..30).to_a.sample(5)
        @n = (31..45).to_a.sample(5)
        @n[2] = "  "
        @g = (46..60).to_a.sample(5)
        @o = (61..75).to_a.sample(5)
    end

    def display
        puts "#{"B".to_s.rjust(2)} | #{"I".to_s.rjust(2)} | #{"N".to_s.rjust(2)} | #{"G".to_s.rjust(2)} | #{"O".to_s.rjust(2)}"
        5.times do |index|
        puts "#{@b[index].to_s.rjust(2)} | #{@i[index]} | #{@n[index]} | #{@g[index]} | #{@o[index]}"
        end
    end
end

bingo = Bingo.new
bingo.generate_card
bingo.display
