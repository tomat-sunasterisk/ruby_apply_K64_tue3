class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください

  def initialize(name, price)
    @name = name
    @price = price
  end

  def get_total_price(count)
        total_price = @price * count
        if count >= 3
            total_price -= 10000
        end
        return "#{@name} #{total_price}VND"
    end
end

menus = []
menu1 = Menu.new('Phở', 30000)

menu2 = Menu.new('Bún chả', 40000)

menu3 = Menu.new('Bánh mì', 20000)

menus = [menu1, menu2, menu3]

menus.each do |dish|
  puts "#{dish.name} #{dish.price}vnd"
end
