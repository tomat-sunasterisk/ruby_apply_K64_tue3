class Bingo
    attr_accessor :b
    attr_accessor :i
    attr_accessor :n
    attr_accessor :g
    attr_accessor :o

    def generate_card
        @b = (1..15).to_a.sample(5)
        @i = (16..30).to_a.sample(5)
        @n = (31..45).to_a.sample(5)
        @n[2] = "  "
        @g = (46..60).to_a.sample(5)
        @o = (61..75).to_a.sample(5)
    end

    def display
        #card = [b,i,n,g,o]
        5.times do |j|
            puts "#{@b[j].to_s.rjust(2)} | #{@i[j]} | #{@n[j]} | #{@g[j]} | #{@o[j]}"
        end
    end
end

bingo = Bingo.new
bingo.generate_card
bingo.display