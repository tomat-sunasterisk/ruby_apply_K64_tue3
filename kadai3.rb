class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください
  def initialize(name, price)
    self.name = name
    self.price = price
  end

  def get_total_price(count)
    total_price = 0 
    count.times{
      total_price += price
    }
     
    if count > 2
     total_price -= 10000 * (count/3)
    end
   return "#{self.name} #{total_price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name,price)
    self.size = size
  end
end



menus = Array.new
menu1 = Menu.new("Phở", 30000)

menu2 = Menu.new("Bánh mì",20000)

menu3 = Menu.new("Bún chả", 50000)


drink1 = Drink.new("Trà", 5000, "M")
drink2 = Drink.new("Trà", 10000, "S")

menus.push(menu1,menu2,menu3,drink1,drink2)

menus.each do |menu|
  p "#{menu.name} #{menu.price} " + ((menu.instance_of? Drink) ? "(#{menu.size}サイズ)" : "")
end

# menu1に対してget_total_priceメソッドを呼び出してください