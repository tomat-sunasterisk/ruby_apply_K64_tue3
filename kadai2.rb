class Menu
  attr_reader :name, :price
  def initialize(name:, price:)
    @name = name
    @price = price
  end
end

menu1 = Menu.new(name:"Phở", price:30000)
menu2 = Menu.new(name:"Bún chả", price:40000)
menu3 = Menu.new(name:"Bánh mì", price:20000)


menus = []
menus.push(menu1, menu2, menu3)

menus.each{
  |menu| puts "#{menu.name} #{menu.price}vnd"
}