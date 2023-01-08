class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください

  def initialize(name, price)
    @name = name
    @price = price
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
menu2 = Menu.new('Pizza', 60_000)
menus.push(menu2)
menu3 = Menu.new('Bun cha', 35_000)
menus.push(menu3)

for dish in menus do
  puts "#{dish.name} #{dish.price}vnd"
end
