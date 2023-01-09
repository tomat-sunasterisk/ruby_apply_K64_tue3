class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    total_price = 0
    count.times do
      total_price += price
    end

    total_price -= 10_000 * (count / 3) if count > 2
    "#{name} #{total_price}vnd"
  end
end

menus = []
menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000

menu2 = Menu.new
menu2.name = 'Bánh mì'
menu2.price = 20_000

menu3 = Menu.new
menu3.name = 'Bún chả'
menu3.price = 50_000

menus.push(menu1, menu2, menu3)

menus.each do |item|
  p "#{item.name} #{item.price} VND"
end
# menu1に対してget_total_priceメソッドを呼び出してください
