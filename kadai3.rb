class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name:, price:, size:)
    super(name: name, price: price)
    self.size = size
  end
end

menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "Bún chả", price: 40000)
menu3 = Menu.new(name: "Bánh mì", price: 20000)
drink1 = Drink.new(name: "Trà", price: 5000, size: "S")
drink2 = Drink.new(name: "Trà", price: 10000, size: "M")

menus = []
menus << menu1
menus << menu2
menus << menu3
menus << drink1
menus << drink2

menus.each do |menu|
  print "#{menu.name} #{menu.price}vnd"
  if menu.is_a? Drink
    print "(#{menu.size}サイズ)"
  end
  puts ""
end
