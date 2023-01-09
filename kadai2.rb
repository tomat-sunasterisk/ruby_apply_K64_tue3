# メニューの一覧表示は下記の条件になっています
# •表示の際には、「料理名値段」の順番で表示させる
# •メニューの変数「menu1」「menu2」「menu3」をそれぞれ定義する
# •変数「menus」を定義し、料理のメニューを配列として代入する
# •menusに対して繰り返し処理を実行する
class Menu
    attr_accessor :name
    attr_accessor :price
    def initialize(name, price)
        self.name = name
        self.price = price
    end
    def get_menu
        puts "#{self.name} #{total_price}vnd"
    end
end
menu1 = Menu.new("pho", 30000)
menu2 = Menu.new("bun cha", 40000)
menu3 = Menu.new("banh mi", 20000)
menus = [menu1, menu2, menu3]

    puts "#{menus[0].name} #{menus[0].price}vnd"
    puts "#{menus[1].name} #{menus[1].price}vnd"
    puts "#{menus[2].name} #{menus[2].price}vnd"


