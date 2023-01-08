class Bingo 
    attr_accessor:b
    attr_accessor:i
    attr_accessor:n
    attr_accessor:g
    attr_accessor:o

    def initialize
        @b = (01..15).to_a.sample(5)
        @i = (16..30).to_a.sample(5)
        @n = (31..45).to_a.sample(5)
        @g = (46..60).to_a.sample(5)
        @o = (61..75).to_a.sample(5)
        @n[2] = 0
    end

    def printBroad
        puts "====================="
        puts "| B | I | N | G | O |"
        puts "====================="
        [b,i,n,g,o].each do |item|
            print "|"
            for i in 0..4
                if i == 2 && item[i] == 0
                    print "   |"
                else
                    printf("%2d |",item[i])
                end
            end
            puts ""
        puts "====================="
        end

    end
end


bingo = Bingo.new
bingo.printBroad
