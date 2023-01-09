class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def initialize(name, price)
    self.name = name
    self.price = price
  end

  def show
    puts "#{name} #{price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end

  def show
    puts "#{name} #{price}vnd  (#{size}サイズ)"
  end
end

menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)
menu4 = Drink.new('Trà', 5000, 'M')
menu5 = Drink.new('Trà', 10_000, 'S')

menus = [menu1, menu2, menu3, menu4, menu5]

menus.each do |data|
  data.show
end
