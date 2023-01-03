class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name, price)
    self.name = name
    self.price = price
  end
end

menus = []
menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)
menus << menu1
menus << menu2
menus << menu3
menus.each do |menu|
  puts "#{menu.name} #{menu.price}vnd"
end
