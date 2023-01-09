class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
  def info
    return "#{self.name} #{self.price} vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name:, price:, size:)
    super(name: name, price: price)
    self.size = size
  end 
  def info
    return "#{self.name} #{self.price} vnd (#{self.size}) "
    end
end

menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "Bún chả", price: 40000)
menu3 = Menu.new(name: "Bánh Mì", price: 20000)
menu4 = Drink.new(name: "Trà sữa", price: 5000, size: 'Sサイズ')
menu5 = Drink.new(name: "Trà sữa", price: 10000, size: "Mサイズ")
allmenu = [menu1, menu2, menu3, menu4, menu5]
allmenu.each do |i|
  puts i.info
end