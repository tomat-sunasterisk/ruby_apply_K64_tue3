class Menu
  attr_accessor :name
  attr_accessor :price
  
  def initialize(name, price)
    self.name = name
    self.price = price
  end
  
  def display
    puts "#{self.name} #{self.price}vnd"
  end
  
end


class Drink < Menu
  attr_accessor :size

  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end

  def display
    puts "#{self.name} #{self.price}vnd (#{self.size})"
  end
  
end

menus = []
menu1 = Menu.new('Pho', 30000)
menus.push(menu1)
menu2 = Menu.new('Bun cha', 25000)
menus.push(menu2)
menu3 = Menu.new('Banh mi', 15000)
menus.push(menu3)
drink1 = Drink.new('Tra dao', 25000, 'Sサイズ')
menus.push(drink1)
drink2 = Drink.new('Tra dao', 30000, 'Mサイズ')
menus.push(drink2)

menus.each do |e|
  puts e.display
end