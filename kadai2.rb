class Menu
    def initialize(name, price)
        @name = name
        @price = price
    end
    def display
    puts "#{@name} #{@price}vnd"
    end
end

menu1 = Menu.new("Phở", 30000)
menu2 = Menu.new("Bún chả", 40000)
menu3 = Menu.new("Bánh mì", 20000)

menus = [menu1, menu2, menu3]

menus.each do |menu|
    menu.display
end