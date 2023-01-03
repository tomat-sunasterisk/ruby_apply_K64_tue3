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

class Drink < Menu
  attr_accessor :size
  def initialize(name:, price:, size:)
    super(name: name, price: price)
    self.size = size
  end

  def info
    # "#{name} #{price}円(#{size}サイズ)"
    super()+"(#{size}サイズ)"
  end
end

drink1 = Drink.new(name: 'コーラ', price: 300, size: 'M')
drink2 = Drink.new(name: 'お茶', price: 200, size: 'S')

menus = [menu1, menu2, menu3, drink1, drink2]

menus.each do |menu|
  puts menu.info
end
