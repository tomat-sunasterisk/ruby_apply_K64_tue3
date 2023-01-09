class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name, price)
    self.name = name
    self.price = price
  end

  def show
    puts("#{@name} #{@price}vnd")
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end

  def show
    puts("#{@name} #{@price}vnd (#{@size}サイズ)")
  end
end

list = []
menu1 = Menu.new('Phở', 30_000)
list.push(menu1)
menu2 = Menu.new('Bun cha', 40_000)
list.push(menu2)
menu3 = Menu.new('Banh mi', 20_000)
list.push(menu3)
menu4 = Drink.new('Tra', 5000, 'S')
list.push(menu4)
menu5 = Drink.new('Tra', 10_000, 'M')
list.push(menu5)

list.each do |item|
  item.show
end
