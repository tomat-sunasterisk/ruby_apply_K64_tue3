class Menu
  attr_accessor :name
  attr_accessor :price
  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price -= 10000
    end
    return "#{self.name} #{total_price}vnd"
  end
  def printf_menu
    puts("#{self.name} #{self.price}vnd")
  end
end
menu = []
menu[0] = Menu.new
menu[0].name = "Phở"
menu[0].price = 30000
menu[1] = Menu.new
menu[1].name = "Bún"
menu[1].price = 35000
menu[2] = Menu.new
menu[2].name = "Cháo"
menu[2].price = 25000

puts("----------MENU----------")
menu.each do |m|
  m.printf_menu
end