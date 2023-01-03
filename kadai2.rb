class Menu
 attr_accessor :name
 attr_accessor :price
 #メニューを一覧表示させましょう。
    def info
        return "#{self.name} #{self.price} vnd"
    end
end

menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30000

menu2 = Menu.new
menu2.name = "Bún chả"
menu2.price = 35000

menu3 = Menu.new
menu3.name = "Bánh mì"
menu3.price = 25000

menus = [menu1, menu2, menu3]

puts "Menu"
menus.each.with_index(1) do |menu, index|
    puts "#{index}. #{menu.info}"
end

