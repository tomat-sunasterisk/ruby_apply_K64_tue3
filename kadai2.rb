class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
end

class Drink < Menu
  def initialize(name:, price:)
    super(name: name, price: price)
  end
end

menu1 = Menu.new(name: 'Phở', price: 30_000)
menu2 = Menu.new(name: 'Bún chả', price: 40_000)
menu3 = Menu.new(name: 'Bánh mì', price: 20_000)

menus = []
menus << menu1
menus << menu2
menus << menu3

menus.each do |menu|
  puts "#{menu.name} #{menu.price} đồng"
end
