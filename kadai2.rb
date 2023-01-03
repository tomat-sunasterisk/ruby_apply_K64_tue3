class Menu
  attr_accessor :name, :price
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def info
    "#{name} #{price}円"
  end
end

menu1 = Menu.new(name: 'ピザ', price: 800)
menu2 = Menu.new(name: 'すし', price: 1000)
menu3 = Menu.new(name: 'ラーメン', price: 300)

menus = [menu1, menu2, menu3]

menus.each do |menu|
  puts menu.info
end
