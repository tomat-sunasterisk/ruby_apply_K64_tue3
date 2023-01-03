class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください

  def initialize(name, price)
    @name = name
    @price = price
  end
  def show
    puts "#{@name} #{@price} vnd"
  end
end

menu1 = Menu.new('Phở', 30000)
menu2 = Menu.new('Bún chả', 40000)
menu3 = Menu.new('Bánh mì', 20000)
menus = [menu1, menu2, menu3].each do |menu| 
    menu.show
end
# menu1に対してget_total_priceメソッドを呼び出してください
