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
  attr_accessor :size

  def initialize(name, price, size)
    super(name, price)
    @size = size
  end

  def display
    puts "#{@name} #{@price}vnd (#{@size})"
  end
end

# Define the menu items
menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)
drink1 = Drink.new('Trà', 5000, 'Sサイズ')
drink2 = Drink.new('Trà', 10_000, 'Mサイズ')

menus = [menu1, menu2, menu3, drink1, drink2]

menus.each do |menu|
  menu.display
end