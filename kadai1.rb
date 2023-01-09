class Menu
  attr_accessor :name
  attr_accessor :price
  attr_accessor :count
  # get_total_priceメソッドを定義してください
  def get_total_price
    total_price = price * count
    if count >3
      total_price = total_price-10_000
    end
    return "#{self.name} #{total_price}vnd"
  end
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.count = 4
menu1.price = 30_000

# menu1に対してget_total_priceメソッドを呼び出してください

puts menu1.get_total_price
