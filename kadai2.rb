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

menus=[]
menu1 = Menu.new("Pho",30000)
menu2 = Menu.new("Bun cha",20000)
menu3 = Menu.new("Com",30000)

menus=[menu1,menu2,menu3]
# menu1に対してget_total_priceメソッドを呼び出してください
menus.each do |dish|
  puts "#{dish.name} #{dish.price} VND"
end
