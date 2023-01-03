class Menu
  def initialize(name, price)
    @name = name
    @price = price
  end
  def show
    puts "#{@name} #{@price} vnd"
  end
end

class Drink < Menu
  def initialize(name, price, size)
    super(name, price)
    @size = size
  end
  def show
    puts "#{@name} (#{@size}) #{@price} vnd"
  end
end

menu1 = Menu.new('Phở', 30000)
menu2 = Menu.new('Bún chả', 40000)
menu3 = Menu.new('Bánh mì', 20000)
drink1 = Drink.new("Trà", 5000, "Sサイズ")
drink2 = Drink.new("Trà", 10000, "Mサイズ")
menus = [menu1, menu2, menu3, drink1, drink2].each do |menu| 
    menu.show
end
# menu1に対してget_total_priceメソッドを呼び出してください
