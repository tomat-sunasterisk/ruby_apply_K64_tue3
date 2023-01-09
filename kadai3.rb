# # メニューの一覧表示は下記の条件になっています
# # •表示の際には、「料理名値段」の順番で表示させる
# # •メニューの変数「menu1」「menu2」「menu3」をそれぞれ定義する
# # •変数「menus」を定義し、料理のメニューを配列として代入する
# # •menusに対して繰り返し処理を実行する
# class Menu
#     attr_accessor :name
#     attr_accessor :price
#     def initialize(name, price)
#         self.name = name
#         self.price = price
#     end
#     def get_menu
#         puts "#{self.name}: #{self.price}}vnd"
#     end
# end
# class Drink < Menu
#     attr_accessor :size
#     def initialize(name, size, price )
#         super(name: name, price: price)
#         self.size = size
#     end
#     def get_drink
#         puts "#{self.name}: #{self.price} (#{self.size})}vnd"
#     end
# end
# menu1 = Menu.new("pho", 30000)
# menu2 = Menu.new("bun cha", 40000)
# menu3 = Menu.new("banh mi", 20000)

# drink1 = Drink.new("tra", "S size", 20000)
# drink2 = Drink.new("tra", "M size", 30000)
# menus = [menu1, menu2, menu3, drink1, drink2]

#    menu1.get_menu
#    menu2.get_menu
#    menu3.get_menu
#    drink1.get_drink
#    drink2.get_drink



class Menu
  attr_accessor :name, :price
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def info
    "#{name} #{price}円"
  end
end

menu1 = Menu.new(name: 'ピザ', price: 800)
menu2 = Menu.new(name: 'すし', price: 1000)
menu3 = Menu.new(name: 'ラーメン', price: 300)

class Drink < Menu
  attr_accessor :size
  def initialize(name:, price:, size:)
    super(name: name, price: price)
    self.size = size
  end

  def info
    # "#{name} #{price}円(#{size}サイズ)"
    super()+"(#{size}サイズ)"
  end
end

drink1 = Drink.new(name: 'コーラ', price: 300, size: 'M')
drink2 = Drink.new(name: 'お茶', price: 200, size: 'S')

menus = [menu1, menu2, menu3, drink1, drink2]

menus.each do |menu|
  puts menu.info
end