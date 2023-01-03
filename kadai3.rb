class Menu
    def initialize(name, price)
        @name = name
        @price = price
    end
    def display
    puts "#{@name} #{@price}vnd"
    end
end

class Drink < Menu 
    def initialize(name, price, size)
        super(name, price)
        @size = size
    end
    def display
        puts "#{@name} #{@price}vnd (#{@size}サイズ)"
    end
end

menu1 = Menu.new("Phở", 30000)
menu2 = Menu.new("Bún chả", 40000)
menu3 = Menu.new("Bánh mì", 20000)
drink1 = Drink.new("Trà", 5000, "S")
drink2 = Drink.new("Trà", 10000, "M")

menus = [menu1, menu2, menu3, drink1, drink2]

menus.each do |menu|
    menu.display
end