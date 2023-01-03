class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def show_menu
    puts "#{self.name} #{self.price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name:, price:, size:)
    super(name: name, price: price)
    self.size = size
  end

  def show_menu
    puts "#{self.name} #{self.price}vnd(#{self.size}サイズ)"
  end
end

menu1 = Menu.new(name: "Phở", price:30000)
menu2 = Menu.new(name: "Bún chả", price:40000)
menu3 = Menu.new(name: "Bánh mì", price:20000)
drink1 = Drink.new(name: 'Trà', price: 5000, size: 'M')
drink2 = Drink.new(name: 'Trà', price: 10000, size: 'S')

menus = [menu1, menu2, menu3, drink1, drink2]

menus.each do |menu|
  menu.show_menu
end