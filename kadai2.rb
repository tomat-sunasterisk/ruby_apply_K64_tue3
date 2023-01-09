class Menu
  attr_accessor :料理名, :値段

  def initialize(料理名, 値段)
    @料理名 = 料理名
    @値段 = 値段
  end

  def show
    puts("#{@料理名} #{@値段}vnd")
  end
end

list = []
menu1 = Menu.new('Phở', 30_000)
list.push(menu1)
menu2 = Menu.new('Bun cha', 40_000)
list.push(menu2)
menu3 = Menu.new('Banh mi', 20_000)
list.push(menu3)

list.each do |item|
  item.show
end
