class Menu
    attr_accessor :name
    attr_accessor :price
    # get_total_priceメソッドを定義してください
  
    def initialize(name, price)
      @name = name
      @price = price
    end
  
    def info
      puts "#{name} #{price}vnd"
    end
end
  
class Drink < Menu
    attr_accessor :size
    def initialize(name, price, size)
      super(name, price)
      @size = size
    end
  
    def info
      puts "#{name} #{price}vnd (#{size})"
    end
end
  
  menu1 = Menu.new('Phở', 30000)
  menu2 = Menu.new('Pizza', 60_000)
  menu3 = Menu.new('Bun cha', 35_000)
  drink1 = Drink.new('Tra', 10000, 'S Size')
  drink2 = Drink.new('Tra', 5000, 'M Size')
  
  menus = [menu1, menu2, menu3, drink1, drink2]
  
menus.each do |menu|
    menu.info
end