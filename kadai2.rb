class Menu
  def initialize(name, price)
    @name = name
    @price = price
  end

  def display
    puts "#{@name} #{@price}vnd"
  end
end

# Define the menu items
menu1 = Menu.new('Phở', 30000)
menu2 = Menu.new('Bún chả', 40000)
menu3 = Menu.new('Bánh mì', 20000)

# Define the array of menu items
menus = [menu1, menu2, menu3]

# Iterate through the menus array and display each menu item
menus.each do |menu|
  menu.display
end