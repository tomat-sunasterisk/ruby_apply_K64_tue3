class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください

  def get_total_price(count)
    total_price = price * count
    total_price -= 10_000 if count >= 3
    puts "#{name} #{total_price} vnd"
  end
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000
print "Input > "
count = gets.to_i
menu1.get_total_price(count)
# menu1に対してget_total_priceメソッドを呼び出してください
