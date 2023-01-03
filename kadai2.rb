class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください

  def initialize(name, price)
    self.name = name
    self.price = price
  end

  def get_total_price(count)
    total_price = price * count
    total_price -= 10_000 if count >= 3
    "#{name} #{total_price}vnd"
  end
end

menus = []
menu1 = Menu.new('Phở', 30000)
menus.push(menu1)
menu2 = Menu.new('Pizza', 80000)
menus.push(menu2)
menu3 = Menu.new('Bun cha', 40000)
menus.push(menu3)

for food in menus do
  puts "#{food.name} #{food.price}vnd"
end