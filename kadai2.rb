class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name, price)
    self.name = name
    self.price = price
  end

  def printMenu
    puts "#{@name} #{@price}vnd"
  end
end

menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)

menus = [menu1, menu2, menu3]

menus.each do |menu|
  menu.printMenu
end
