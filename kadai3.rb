class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize (name:, price:)
    self.name = name
    self.price = price
  end

   # get_total_priceメソッドを定義してください
   def info(count)
     total_price = count * self.price

     if count >= 3
       total_price = total_price - 10000
     end

     return "#{self.name} #{total_price}vnd"
   end
end

class Drink < Menu
  attr_accessor :size

  def initialize(name:, price: , size:)
    super(name: name, price: price)
    self.size = size
  end

  def info(count)
    return super(count) + ' (' + self.size + 'サイズ)'
  end
end

menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "Bún chả", price: 40000)
menu3 = Menu.new(name: "Bánh mì", price: 20000)
menu4 = Drink.new(name: "Trà", price: 5000, size: "S")
menu5 = Drink.new(name: "Trà", price: 10000, size: "M")

menus = [menu1, menu2, menu3, menu4, menu5]

menus.each do |menu|
  puts menu.info(1)
end
