class Menu
  attr_reader :name, :price
  def initialize(name:, price:)
    @name = name
    @price = price
  end
end

class Drink < Menu
  attr_reader :size
  def initialize(name:, price:, size:)
    super(name: name, price: price)
    @size = size
  end
end

menu1 = Menu.new(name: 'Phở', price: 30_000)
menu2 = Menu.new(name: 'Bún chả', price: 40_000)
menu3 = Menu.new(name: 'Bánh mì', price: 20_000)
menu4 = Drink.new(name: 'Trà', price: '5000', size: 'Sサイズ')
menu5 = Drink.new(name: 'Trà', price: '10000', size: 'Mサイズ')

menus = []
menus.push(menu1, menu2, menu3, menu4, menu5)

menus.each do |menu|
  puts "#{menu.name} #{menu.price}vnd" + (menu.instance_of?(Drink) ? " (#{menu.size})" : '')
end
