class Menu
  attr_accessor :name
  attr_accessor :price
  def get_total_price(count)
    total_price = if count >= 3
                    count * price - 10_000
                  else
                    count * price
                  end
    "#{name} #{total_price}vnd"
  end
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000

puts 'Nhap so luong >'
count = gets.to_i
puts(menu1.get_total_price(count))
