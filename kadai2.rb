class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price -= 10000
    end  
   return "#{self.name} #{total_price}vnd"
 end
end

# create array of menu
menu = []
menu1 = Menu.new
menu1.name = "Pho"
menu1.price = 30000
menu.push(menu1)

menu2 = Menu.new
menu2.name = "Bun cha"
menu2.price = 40000
menu.push(menu2)

menu3 = Menu.new
menu3.name = "Banh mi"
menu3.price = 20000
menu.push(menu3)

# print menu
puts "Menu"
menu.each do |item|
  puts "#{item.name} #{item.price}vnd"
end

