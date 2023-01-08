class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください
def initialize(name, price)
    @name= name
    @price= price
end
def get_total_price(count)
    total_price = price * count
    if(count >3) 
      total_price -=10000
    end
      return "#{self.name} #{total_price}vnd"
 end
end
class Drink < Menu
  attr_accessor :size
def initialize(name , price , size)
      @name=name
      @price = price
      @size = size
  end
end
menus=[]
drinks=[]
menu1 = Menu.new("Pho",30000)
menu2 = Menu.new("Bun cha",20000)
menu3 = Menu.new("Com",30000)
drink1 = Drink.new("Tra",5000,"Size S")
drink2 = Drink.new("Tra",10000,"Size M")

menus=[menu1,menu2,menu3]
drinks = [drink1,drink2]
# menu1に対してget_total_priceメソッドを呼び出してください
menus.each do |dish|
  puts "#{dish.name} #{dish.price} VND"
end
drinks.each do |dish|
  puts "#{dish.name} #{dish.price} VND #{dish.size}"
end